/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/layertree/qgslayertreeregistrybridge.h                      *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/






class QgsLayerTreeRegistryBridge : QObject
{
%Docstring
 Listens to the updates in map layer registry and does changes in layer tree.

 When connected to a layer tree, any layers added to the map layer registry
 will be also added to the layer tree. Similarly, map layers that are removed
 from registry will be removed from the layer tree.

 If a layer is completely removed from the layer tree, it will be also removed
 from the map layer registry.

.. versionadded:: 2.4
%End

%TypeHeaderCode
#include "qgslayertreeregistrybridge.h"
%End
  public:
    explicit QgsLayerTreeRegistryBridge( QgsLayerTreeGroup *root, QgsProject *project, QObject *parent /TransferThis/ = 0 );
%Docstring
Create the instance that synchronizes given project with a layer tree root
%End

    void setEnabled( bool enabled );
    bool isEnabled() const;
%Docstring
 :rtype: bool
%End

    void setNewLayersVisible( bool enabled );
    bool newLayersVisible() const;
%Docstring
 :rtype: bool
%End

    void setLayerInsertionPoint( QgsLayerTreeGroup *parentGroup, int index );
%Docstring
By default it is root group with zero index.
%End

  signals:
    void addedLayersToLayerTree( const QList<QgsMapLayer *> &layers );
%Docstring
.. versionadded:: 2.6
%End

  protected slots:
    void layersAdded( const QList<QgsMapLayer *> &layers );
    void layersWillBeRemoved( const QStringList &layerIds );

    void groupWillRemoveChildren( QgsLayerTreeNode *node, int indexFrom, int indexTo );
    void groupRemovedChildren();

    void removeLayersFromRegistry( const QStringList &layerIds );

  protected:

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/layertree/qgslayertreeregistrybridge.h                      *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
