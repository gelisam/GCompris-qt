#ifndef MASTERCONTROLLER_H
#define MASTERCONTROLLER_H

#include <QObject>
#include <QScopedPointer>
#include <QString>

#include <cm-lib_global.h>
#include <controllers/command-controller.h>
#include <controllers/database-controller.h>
#include <controllers/navigation-controller.h>
#include <models/client.h>
#include <models/client-search.h>
#include <models/group.h>

namespace cm {
namespace controllers {

    class CMLIBSHARED_EXPORT MasterController : public QObject
    {
        Q_OBJECT

        Q_PROPERTY(cm::controllers::NavigationController *ui_navigationController READ navigationController CONSTANT)
        Q_PROPERTY(cm::controllers::CommandController *ui_commandController READ commandController CONSTANT)
        Q_PROPERTY(cm::controllers::DatabaseController *ui_databaseController READ databaseController CONSTANT)
        Q_PROPERTY(cm::models::Group *ui_newGroup READ newGroup CONSTANT)
        Q_PROPERTY(cm::models::Client *ui_newClient READ newClient CONSTANT)
        Q_PROPERTY(cm::models::ClientSearch *ui_clientSearch READ clientSearch CONSTANT)
        Q_PROPERTY(QQmlListProperty<cm::models::Group> ui_groups READ ui_groups NOTIFY groupsChanged)

    public:
        explicit MasterController(QObject *parent = nullptr);
        ~MasterController();

        CommandController *commandController();
        DatabaseController *databaseController();
        NavigationController *navigationController();
        models::Group *newGroup();
        models::Client *newClient();
        models::ClientSearch *clientSearch();
        QQmlListProperty<cm::models::Group> ui_groups();

    public slots:
        void createGroup(cm::models::Group *group);
        void selectClient(cm::models::Client *client);

    signals:
        void groupsChanged();

    private:
        class Implementation;
        QScopedPointer<Implementation> implementation;
    };

}
}

#endif
