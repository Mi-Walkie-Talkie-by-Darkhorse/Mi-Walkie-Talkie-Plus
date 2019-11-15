.class public Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/connection/IConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl$ConnectPrintLogCallback;
    }
.end annotation


# static fields
.field private static final CLASSTAG:Ljava/lang/String; = "ConnectionImpl"

.field private static final MSG_ID_ON_CONNECT:I = 0x1

.field private static final MSG_ID_ON_DISCONNECT:I = 0x2

.field private static final MSG_ID_ON_ERROR:I = 0x3

.field private static final MSG_ID_ON_MSGPROC:I = 0x8

.field private static final MSG_ID_ON_RECV:I = 0x5

.field private static final MSG_ID_ON_SENDBEGIN:I = 0x6

.field private static final MSG_ID_ON_SENDEND:I = 0x7

.field private static final MSG_ID_ON_START:I = 0x0

.field private static final MSG_ID_ON_TIMEOUT:I = 0x4

.field private static volatile sIsLoaded:Z

.field private static sLogCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl$ConnectPrintLogCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sMsgMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

.field private mCreatorSessionNO:I

.field private mMsgObjectMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgProc:Lcom/mi/milinkforgame/sdk/session/MsgProcessor;

.field private mNativeContext:J

.field private mReferenceNo:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sIsLoaded:Z

    :try_start_0
    const-string v0, "connectionbase"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/Native;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "milinkgameconnection"

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/base/os/Native;->loadLibrary(Ljava/lang/String;)Z

    move-result v3

    if-nez v0, :cond_0

    if-ne v3, v1, :cond_0

    const-string v0, "connectionbase"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/Native;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sIsLoaded:Z

    invoke-static {}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->native_init()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-string v0, "ConnectionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadLibrary return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sIsLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sMsgMap:Landroid/util/SparseArray;

    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sMsgMap:Landroid/util/SparseArray;

    const-string v3, "onStart"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sMsgMap:Landroid/util/SparseArray;

    const-string v2, "onConnect"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sMsgMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "onDisconnect"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sMsgMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "onError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sMsgMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "onTimeout"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sMsgMap:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "onRecv"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sMsgMap:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "onSendBegin"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sMsgMap:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "onSendEnd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sMsgMap:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "onMsgProc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sLogCallbackList:Ljava/util/List;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "ConnectionImpl"

    const-string v4, "System.loadLibrary failed"

    invoke-static {v3, v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-boolean v2, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sIsLoaded:Z

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "ConnectionImpl"

    const-string v4, "System.loadLibrary failed"

    invoke-static {v3, v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-boolean v2, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sIsLoaded:Z

    goto/16 :goto_1
.end method

.method public constructor <init>(II)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mMsgObjectMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mReferenceNo:Ljava/util/concurrent/atomic/AtomicInteger;

    iput v4, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mType:I

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mMsgProc:Lcom/mi/milinkforgame/sdk/session/MsgProcessor;

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    sget-boolean v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sIsLoaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCreatorSessionNO:I

    const-string v0, "[No:%d]%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "ConnectionImpl"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->TAG:Ljava/lang/String;

    iput p2, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mType:I

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v1, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mType:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->native_setup(Ljava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "native_setup failed"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized addConnectPrintLogCallback(Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl$ConnectPrintLogCallback;)V
    .locals 2

    const-class v1, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sLogCallbackList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isLibLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sIsLoaded:Z

    return v0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup(Ljava/lang/Object;II)V
.end method

.method private static declared-synchronized notifyConnectPrintLogCallback(ILjava/lang/String;)V
    .locals 3

    const-class v2, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sLogCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sLogCallbackList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl$ConnectPrintLogCallback;

    invoke-interface {v0, p0, p1}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl$ConnectPrintLogCallback;->printLogCallback(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4

    :try_start_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ConnectionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEventFromNative msg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sMsgMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", arg1="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", arg2="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to SessionNo:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCreatorSessionNO:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    const-string v0, "ConnectionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ConnectionImpl"

    const-string v2, "postEventFromNative Exception"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_0
    :try_start_1
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->onStart()Z

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1, p3}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->onConnect(ZI)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->onDisconnect()Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, p2}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->onError(I)Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, p2, p3}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->onTimeOut(II)Z

    goto :goto_0

    :pswitch_5
    check-cast p4, [B

    check-cast p4, [B

    invoke-virtual {v0, p4}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->onRecv([B)Z

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v0, p2}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->onSendBegin(I)Z

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v0, p2}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->onSendEnd(I)Z

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v0, p2, p4, p3}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->onMsgProc(ILjava/lang/Object;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static final printLog(ILjava/lang/String;)V
    .locals 1

    const-string v0, "native"

    invoke-static {v0, p1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->notifyConnectPrintLogCallback(ILjava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized removeConnectPrintLogCallback(Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl$ConnectPrintLogCallback;)V
    .locals 2

    const-class v1, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sLogCallbackList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public native connect(Ljava/lang/String;ILjava/lang/String;III)Z
.end method

.method public native disconnect()Z
.end method

.method protected finalize()V
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->TAG:Ljava/lang/String;

    const-string v1, "finalize connection"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->native_finalize()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getConnectionType()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mType:I

    return v0
.end method

.method public getServerIP()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native isRunning()Z
.end method

.method public native isSendDone(I)Z
.end method

.method public onConnect(ZI)Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    invoke-interface {v0, p1, p2}, Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;->onConnect(ZI)Z

    move-result v0

    goto :goto_0
.end method

.method public onDisconnect()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    invoke-interface {v0}, Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;->onDisconnect()Z

    move-result v0

    goto :goto_0
.end method

.method public onError(I)Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    invoke-interface {v0, p1}, Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;->onError(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onMsgProc(ILjava/lang/Object;I)Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mMsgProc:Lcom/mi/milinkforgame/sdk/session/MsgProcessor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mMsgObjectMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mMsgProc:Lcom/mi/milinkforgame/sdk/session/MsgProcessor;

    invoke-interface {v1, p1, v0, p3}, Lcom/mi/milinkforgame/sdk/session/MsgProcessor;->onMsgProc(ILjava/lang/Object;I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRecv([B)Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    invoke-interface {v0, p1}, Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;->onRecv([B)Z

    move-result v0

    goto :goto_0
.end method

.method public onSendBegin(I)Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    invoke-interface {v0, p1}, Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;->onSendBegin(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onSendEnd(I)Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    invoke-interface {v0, p1}, Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;->onSendEnd(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onStart()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    invoke-interface {v0}, Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;->onStart()Z

    move-result v0

    goto :goto_0
.end method

.method public onTimeOut(II)Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    invoke-interface {v0, p1, p2}, Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;->onTimeOut(II)Z

    move-result v0

    goto :goto_0
.end method

.method public native postMessage(III)Z
.end method

.method public postMessage(ILjava/lang/Object;ILcom/mi/milinkforgame/sdk/session/MsgProcessor;)Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sIsLoaded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "postMessage failed:lib is unloaded"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput-object p4, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mMsgProc:Lcom/mi/milinkforgame/sdk/session/MsgProcessor;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mReferenceNo:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mMsgObjectMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->postMessage(III)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->TAG:Ljava/lang/String;

    const-string v3, "postMessage failed"

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public native removeAllSendData()V
.end method

.method public native removeSendData(I)V
.end method

.method public native sendData([BII)Z
.end method

.method public setCallback(Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->mCallback:Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;

    return-void
.end method

.method public native start()Z
.end method

.method public native stop()Z
.end method

.method public native wakeUp()V
.end method
