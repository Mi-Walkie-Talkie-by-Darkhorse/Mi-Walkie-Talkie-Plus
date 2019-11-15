.class public Lcom/ifengyu/im/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static m_pInstance:Lcom/ifengyu/im/Security;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ifengyu/im/Security;
    .locals 2

    const-class v1, Lcom/ifengyu/im/Security;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/Security;->m_pInstance:Lcom/ifengyu/im/Security;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/im/Security;

    invoke-direct {v0}, Lcom/ifengyu/im/Security;-><init>()V

    sput-object v0, Lcom/ifengyu/im/Security;->m_pInstance:Lcom/ifengyu/im/Security;

    :cond_0
    sget-object v0, Lcom/ifengyu/im/Security;->m_pInstance:Lcom/ifengyu/im/Security;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public native DecryptMsg(Ljava/lang/String;)[B
.end method

.method public native EncryptMsg(Ljava/lang/String;)[B
.end method

.method public native EncryptPass(Ljava/lang/String;)[B
.end method
