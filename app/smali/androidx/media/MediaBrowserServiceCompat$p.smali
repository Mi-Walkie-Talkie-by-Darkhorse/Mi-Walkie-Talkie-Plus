.class Landroidx/media/MediaBrowserServiceCompat$p;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Landroidx/media/MediaBrowserServiceCompat$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "p"
.end annotation


# instance fields
.field final a:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/os/Messenger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$p;->a:Landroid/os/Messenger;

    return-void
.end method

.method private c(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    const/4 p1, 0x2

    .line 3
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$p;->a:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data_media_item_id"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data_options"

    .line 3
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "data_notify_children_changed_options"

    .line 4
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p2, :cond_1

    .line 5
    instance-of p1, p2, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p2, p1

    :goto_0
    const-string p1, "data_media_item_list"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, v0}, Landroidx/media/MediaBrowserServiceCompat$p;->c(ILandroid/os/Bundle;)V

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$p;->a:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Landroidx/media/MediaBrowserServiceCompat$p;->c(ILandroid/os/Bundle;)V

    return-void
.end method
