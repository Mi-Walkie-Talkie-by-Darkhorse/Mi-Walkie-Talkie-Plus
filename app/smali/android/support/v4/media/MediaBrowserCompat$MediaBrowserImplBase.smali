.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;
.implements Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    }
.end annotation


# static fields
.field private static final CONNECT_STATE_CONNECTED:I = 0x2

.field static final CONNECT_STATE_CONNECTING:I = 0x1

.field static final CONNECT_STATE_DISCONNECTED:I = 0x0

.field static final CONNECT_STATE_SUSPENDED:I = 0x3


# instance fields
.field final mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

.field mCallbacksMessenger:Landroid/os/Messenger;

.field final mContext:Landroid/content/Context;

.field private mExtras:Landroid/os/Bundle;

.field final mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

.field private mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final mRootHints:Landroid/os/Bundle;

.field private mRootId:Ljava/lang/String;

.field mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

.field final mServiceComponent:Landroid/content/ComponentName;

.field mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

.field mState:I

.field private final mSubscriptions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    if-nez p4, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;

    return-void

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static getStateLabel(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CONNECT_STATE_DISCONNECTED"

    goto :goto_0

    :pswitch_1
    const-string v0, "CONNECT_STATE_CONNECTING"

    goto :goto_0

    :pswitch_2
    const-string v0, "CONNECT_STATE_CONNECTED"

    goto :goto_0

    :pswitch_3
    const-string v0, "CONNECT_STATE_SUSPENDED"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eq v0, p1, :cond_1

    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-eqz v0, :cond_0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mCallbacksMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 6

    const/4 v1, 0x1

    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() called while not disconnected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceConnection should be null. Instead it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceBinderWrapper should be null. Instead it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacksMessenger should be null. Instead it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-direct {v2, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/content/ServiceConnection;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "MediaBrowserCompat"

    const-string v1, "connect..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->dump()V

    :cond_5
    return-void

    :catch_0
    move-exception v1

    const-string v1, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed binding to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->disconnect(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->forceCloseConnection()V

    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MediaBrowserCompat"

    const-string v1, "disconnect..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->dump()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException during connect for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dump()V
    .locals 3

    const-string v0, "MediaBrowserCompat"

    const-string v1, "MediaBrowserCompat..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootHints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceBinderWrapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallbacksMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMediaSessionToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method forceCloseConnection()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExtras() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const-string v0, "MediaBrowserCompat"

    const-string v1, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;-><init>(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Landroid/os/Handler;)V

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    const-string v1, "Remote error getting media item."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoot() called while not connected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceComponent() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSessionToken() called while not connected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnectionFailed(Landroid/os/Messenger;)V
    .locals 3

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectFailed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onConnectFailed"

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect from service while mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->forceCloseConnection()V

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    goto :goto_0
.end method

.method public onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onLoadChildren"

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadChildren for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    if-nez v0, :cond_3

    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadChildren for id that isn\'t subscribed id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p4}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallback(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_5

    if-nez p3, :cond_4

    invoke-virtual {v0, p2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_5
    if-nez p3, :cond_6

    invoke-virtual {v0, p2, p4}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "onConnect"

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect from service while mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mExtras:Landroid/os/Bundle;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MediaBrowserCompat"

    const-string v1, "ServiceCallbacks.onConnect..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->dump()V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v5

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$000(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v8, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v6, v1, v7, v0, v8}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    const-string v1, "addSubscription failed with RemoteException."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaBrowserCompat"

    const-string v1, "Not connected, unable to search."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;

    invoke-direct {v1, p0, p3, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;Landroid/os/Handler;)V

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, p2, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote error searching items with query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;

    invoke-direct {v1, p0, p3, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    invoke-direct {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;-><init>()V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0, p3}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->putCallback(Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    iget v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-static {p3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$000(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v7, 0x2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_4

    :try_start_0
    iget v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_6

    iget v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$000(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, p1, v5, v6}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V

    :cond_5
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
