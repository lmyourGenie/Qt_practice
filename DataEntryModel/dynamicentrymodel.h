#ifndef DYNAMICENTRYMODEL_H
#define DYNAMICENTRYMODEL_H

#include <QtCore>
#include <QtGui>

class DynamicEntryModel : public QAbstractListModel {
    Q_OBJECT
    Q_PROPERTY(int count READ count NOTIFY countChanged)
public:
    explicit DynamicEntryModel(QObject* parent = 0);
    ~DynamicEntryModel();

    enum RoleNames {
        NameRole = Qt::UserRole,
        HueRole = Qt::UserRole + 2,
        SaturationRole = Qt::UserRole + 3,
        BrightnessRole = Qt::UserRole + 4
    };

    // Q_INVOKABLE 의미 : qml에서 이 함수를 호출할 수 있도록 하겠다.
    Q_INVOKABLE void insert(int index, const QString& colorValue);
    Q_INVOKABLE void append(const QString& colorValue);
    Q_INVOKABLE void remove(int index);
    Q_INVOKABLE void clear();
    Q_INVOKABLE QColor get(int index);

public:  // QAbstractItemModel interface
    virtual int rowCount(const QModelIndex& parent) const override;
    virtual QVariant data(const QModelIndex& index, int role) const override;
    int count() const;

signals:
    void countChanged(int arg);

protected:
    virtual QHash<int, QByteArray> roleNames() const override;

private:
    QList<QColor> m_data;
    QHash<int, QByteArray> m_roleNames;
    int m_count;
};

#endif  // DYNAMICENTRYMODEL_H
