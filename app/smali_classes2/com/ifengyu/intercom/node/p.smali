.class public Lcom/ifengyu/intercom/node/p;
.super Ljava/lang/Object;
.source "WalkTalkTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/p$d;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "p"


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/lang/Object;

.field private final c:Landroid/os/Handler;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/node/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/node/f;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Z

.field private g:Ljava/io/InputStream;

.field private h:Ljava/io/OutputStream;

.field private i:Lcom/ifengyu/intercom/node/transport/j;

.field private j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/p;->b:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/p;->e:Ljava/util/Map;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    .line 6
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "writer-watchdog"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/node/p$d;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p0, p1}, Lcom/ifengyu/intercom/node/p$d;-><init>(Lcom/ifengyu/intercom/node/p;Lcom/ifengyu/intercom/node/p;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/p;->c:Landroid/os/Handler;

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;)Lcom/ifengyu/intercom/node/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "getBtKeyConnectionInfo"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a()Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    move-result-object p2

    .line 157
    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->e:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    if-ne p2, v0, :cond_0

    .line 158
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "allow to connect"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance p1, Lcom/ifengyu/intercom/node/d;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/ifengyu/intercom/node/d;-><init>(Ljava/lang/String;I)V

    const/4 p2, 0x6

    .line 160
    invoke-static {p2}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    .line 161
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    goto :goto_0

    .line 162
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->f:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    if-eq p2, v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 163
    :cond_1
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom is low power"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    .line 165
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    .line 166
    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/node/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    .line 167
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getConnCode()Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    move-result-object v0

    .line 168
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->ALLOW:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 169
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "allow to connect"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->a()V

    .line 171
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getVersion()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 172
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 173
    new-instance p2, Lcom/ifengyu/intercom/node/d;

    invoke-direct {p2, p1, v0}, Lcom/ifengyu/intercom/node/d;-><init>(Ljava/lang/String;I)V

    .line 174
    invoke-static {v2}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    .line 175
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    goto :goto_1

    .line 176
    :cond_0
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Support min version is 1, but got version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->c:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    .line 178
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    .line 179
    new-instance p1, Lcom/ifengyu/intercom/node/VersionMismatchException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/VersionMismatchException;-><init>()V

    throw p1

    .line 180
    :cond_1
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-eq v0, p2, :cond_4

    .line 181
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->WAIT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-ne v0, p2, :cond_2

    .line 182
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Need confirm connection on your intercom screen!"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/p;->b(Ljava/lang/String;)V

    .line 184
    iput-boolean v2, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    goto :goto_0

    .line 185
    :cond_2
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE_LOWPOWER:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-eq v0, p2, :cond_3

    :goto_0
    const/4 p2, 0x0

    :goto_1
    return-object p2

    .line 186
    :cond_3
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom is low power"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    .line 188
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    .line 189
    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1

    .line 190
    :cond_4
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom refuse connect request or waiting confrim timeout!!!"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    .line 192
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    .line 193
    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;)Lcom/ifengyu/intercom/node/d;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "getSealConnectionInfo"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getVersion()I

    move-result v0

    .line 92
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getDeviceId()I

    move-result v1

    .line 93
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getConnCode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    move-result-object v2

    .line 94
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getLanguage()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;

    move-result-object v3

    .line 95
    sget-object v4, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_ALLOW:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v2, v4, :cond_2

    .line 96
    sget-object v2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v4, "allow to connect"

    invoke-static {v2, v4}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->a()V

    .line 98
    new-instance v2, Lcom/ifengyu/intercom/node/d;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/ifengyu/intercom/node/d;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x5

    .line 99
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    .line 100
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->m(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;->getNumber()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mcu_language_type_chinese"

    goto :goto_0

    :cond_0
    const-string v0, "mcu_language_type_english"

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->n(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->hasColor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getColor()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(I)V

    .line 103
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    goto :goto_3

    .line 104
    :cond_2
    sget-object p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_REFUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-eq v2, p2, :cond_6

    .line 105
    sget-object p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_WAIT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v2, p2, :cond_3

    .line 106
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Need confirm connection on your intercom screen!"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/p;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    goto :goto_2

    .line 109
    :cond_3
    sget-object p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_LOWPOWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-eq v2, p2, :cond_5

    .line 110
    sget-object p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_BUSY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v2, p2, :cond_4

    .line 111
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 113
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 114
    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/node/q/d;->c(Ljava/lang/String;)V

    :cond_4
    :goto_2
    const/4 v2, 0x0

    :goto_3
    return-object v2

    .line 115
    :cond_5
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom is low power"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    .line 117
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    .line 118
    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1

    .line 119
    :cond_6
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom refuse connect request or waiting confrim timeout!!!"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    .line 121
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    .line 122
    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;)Lcom/ifengyu/intercom/node/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "getSharkConnectionInfo"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getVersion()I

    move-result v0

    .line 125
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getDeviceId()I

    move-result v1

    .line 126
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getConnCode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    move-result-object v2

    .line 127
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getLanguage()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    move-result-object p2

    .line 128
    sget-object v3, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_ALLOW:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-ne v2, v3, :cond_1

    .line 129
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "allow to connect"

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->a()V

    .line 131
    new-instance p1, Lcom/ifengyu/intercom/node/d;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Lcom/ifengyu/intercom/node/d;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x4

    .line 132
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    .line 133
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->o(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;->getNumber()I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "mcu_language_type_chinese"

    goto :goto_0

    :cond_0
    const-string p2, "mcu_language_type_english"

    :goto_0
    invoke-static {p2}, Lcom/ifengyu/intercom/i/d0;->p(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    goto :goto_2

    .line 136
    :cond_1
    sget-object p2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_REFUSE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-eq v2, p2, :cond_5

    .line 137
    sget-object p2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_WAIT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-ne v2, p2, :cond_2

    .line 138
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Need confirm connection on your intercom screen!"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/p;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    goto :goto_1

    .line 141
    :cond_2
    sget-object p2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_LOWPOWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-eq v2, p2, :cond_4

    .line 142
    sget-object p2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_BUSY:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-ne v2, p2, :cond_3

    .line 143
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 145
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 146
    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/node/q/d;->c(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return-object p1

    .line 147
    :cond_4
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom is low power"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    .line 149
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    .line 150
    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1

    .line 151
    :cond_5
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom refuse connect request or waiting confrim timeout!!!"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    .line 153
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    .line 154
    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "doBtKeyHandshake: start..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object v0

    .line 78
    invoke-static {p3}, Lcom/ifengyu/intercom/node/transport/a;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)[B

    move-result-object v1

    const/4 v8, 0x6

    const/16 v2, 0x4e21

    .line 79
    invoke-static {v8, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(I[BI)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v6

    const/4 v1, 0x0

    .line 80
    :try_start_0
    invoke-static {v0, p2, v6, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    .line 81
    new-instance v9, Lcom/ifengyu/intercom/node/p$b;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/ifengyu/intercom/node/p$b;-><init>(Lcom/ifengyu/intercom/node/p;Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    const-wide/16 v2, 0x7d0

    .line 82
    invoke-virtual {p5, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    invoke-static {v8}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    .line 84
    invoke-static {v0, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/ifengyu/intercom/node/btkey/a;

    move-result-object p1

    .line 85
    invoke-virtual {p5, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    instance-of p2, p1, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;

    if-nez p2, :cond_0

    .line 87
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "error, device didn\'t start with a connectResponse message"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 88
    :cond_0
    check-cast p1, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;

    invoke-direct {p0, p3, p1}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;)Lcom/ifengyu/intercom/node/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasConnectQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ConnectQuery"

    return-object p0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasConnectResp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ConnectResp"

    return-object p0

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasHeartbeat()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Heartbeat"

    return-object p0

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasControl()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Control"

    return-object p0

    .line 215
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamQuery()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "ParamQuery"

    return-object p0

    .line 216
    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamResp()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "ParamResp"

    return-object p0

    .line 217
    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamUpdate()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "ParamUpdate"

    return-object p0

    .line 218
    :cond_6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasStateQuery()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "StateQuery"

    return-object p0

    .line 219
    :cond_7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasStateResp()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "StateResp"

    return-object p0

    .line 220
    :cond_8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasLocationSync()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "LocationSync"

    return-object p0

    .line 221
    :cond_9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasLocationCtl()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "LocationCtl"

    return-object p0

    .line 222
    :cond_a
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFileReq()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "FileReq"

    return-object p0

    .line 223
    :cond_b
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFilePack()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "FilePack"

    return-object p0

    .line 224
    :cond_c
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFileResp()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "FileResponse"

    return-object p0

    .line 225
    :cond_d
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasUpdateResponse()Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "UpdateResponse"

    return-object p0

    :cond_e
    const-string p0, "UnknownType"

    return-object p0
.end method

.method private a(Lcom/ifengyu/intercom/node/i;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/g;

    .line 229
    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/node/g;->a(Lcom/ifengyu/intercom/node/i;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Ljava/lang/String;Lcom/ifengyu/intercom/node/d;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v0, p4

    move-object/from16 v11, p6

    if-eqz v11, :cond_2

    .line 31
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Lcom/ifengyu/intercom/node/d;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 32
    sget-object v2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connected to device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", oldId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", nodeId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    sget-object v2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v3, "first connect"

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Z)V

    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v2

    iget-object v2, v2, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/node/q/a;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    goto :goto_0

    .line 38
    :cond_1
    sget-object v2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v3, "can not get node id."

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    new-instance v12, Lcom/ifengyu/intercom/node/o;

    move-object/from16 v8, p2

    invoke-direct {v12, v8, v11, v10}, Lcom/ifengyu/intercom/node/o;-><init>(Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/d;Lcom/ifengyu/intercom/node/transport/j;)V

    .line 40
    new-instance v2, Lcom/ifengyu/intercom/node/c;

    invoke-direct {v2, v9, v1, v12}, Lcom/ifengyu/intercom/node/c;-><init>(Lcom/ifengyu/intercom/node/p;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 41
    iget-object v3, v9, Lcom/ifengyu/intercom/node/p;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v13

    .line 42
    new-instance v2, Lcom/ifengyu/intercom/node/k;

    move-object/from16 v7, p1

    invoke-direct {v2, v9, v7, v11, v10}, Lcom/ifengyu/intercom/node/k;-><init>(Lcom/ifengyu/intercom/node/p;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/d;Lcom/ifengyu/intercom/node/transport/j;)V

    .line 43
    new-instance v3, Lcom/ifengyu/intercom/node/c;

    invoke-direct {v3, v9, v1, v2}, Lcom/ifengyu/intercom/node/c;-><init>(Lcom/ifengyu/intercom/node/p;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 44
    iget-object v1, v9, Lcom/ifengyu/intercom/node/p;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v14

    .line 45
    iget-object v15, v9, Lcom/ifengyu/intercom/node/p;->e:Ljava/util/Map;

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 46
    :try_start_1
    new-instance v6, Lcom/ifengyu/intercom/node/f;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object v4, v12

    move-object v5, v13

    move-object v0, v6

    move-object v6, v14

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/ifengyu/intercom/node/f;-><init>(Lcom/ifengyu/intercom/node/p;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/o;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 47
    iget-object v1, v9, Lcom/ifengyu/intercom/node/p;->e:Ljava/util/Map;

    invoke-virtual/range {p6 .. p6}, Lcom/ifengyu/intercom/node/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    invoke-direct {v9, v12}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/i;)V

    .line 50
    invoke-virtual/range {p4 .. p4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/utils/e;->a(I)V

    .line 51
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "blocking until processing loop finishes..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v1, 0x1

    .line 52
    :try_start_3
    invoke-interface {v14}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    .line 53
    :catch_1
    :try_start_4
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "Rx thread was cancelled"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    :goto_1
    :try_start_5
    invoke-interface {v13}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 55
    :catch_2
    :try_start_6
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "Tx thread was cancelled"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 56
    :goto_2
    :try_start_7
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "Process loop is finished."

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual/range {p3 .. p3}, Lcom/ifengyu/intercom/node/transport/j;->c()V

    .line 58
    invoke-virtual/range {p6 .. p6}, Lcom/ifengyu/intercom/node/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/ifengyu/intercom/node/p;->c(Ljava/lang/String;)V

    .line 59
    invoke-interface {v13, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 60
    :goto_3
    invoke-interface {v14, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    .line 61
    :goto_4
    :try_start_8
    sget-object v2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tx or Rx thread threw a exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 62
    :try_start_9
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "Process loop is finished."

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual/range {p3 .. p3}, Lcom/ifengyu/intercom/node/transport/j;->c()V

    .line 64
    invoke-virtual/range {p6 .. p6}, Lcom/ifengyu/intercom/node/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/ifengyu/intercom/node/p;->c(Ljava/lang/String;)V

    .line 65
    invoke-interface {v13, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    .line 66
    :goto_5
    sget-object v2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v3, "Process loop is finished."

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual/range {p3 .. p3}, Lcom/ifengyu/intercom/node/transport/j;->c()V

    .line 68
    invoke-virtual/range {p6 .. p6}, Lcom/ifengyu/intercom/node/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/ifengyu/intercom/node/p;->c(Ljava/lang/String;)V

    .line 69
    invoke-interface {v13, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 70
    invoke-interface {v14, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 71
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3

    :catchall_1
    move-exception v0

    .line 72
    :try_start_a
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0

    .line 73
    :cond_2
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "connect failed, close."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual/range {p3 .. p3}, Lcom/ifengyu/intercom/node/transport/j;->c()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 75
    sget-object v1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/g;

    .line 227
    invoke-interface {v1, p1, p2}, Lcom/ifengyu/intercom/node/g;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "doDolphinHandshake: start..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v8, 0x1

    .line 4
    invoke-static {v8, v2, v3}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v6

    .line 5
    invoke-static {v0, p2, v6, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    .line 6
    new-instance v9, Lcom/ifengyu/intercom/node/p$c;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/ifengyu/intercom/node/p$c;-><init>(Lcom/ifengyu/intercom/node/p;Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    const-wide/16 v2, 0x7d0

    .line 7
    invoke-virtual {p5, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    invoke-static {v8}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object p2

    .line 10
    invoke-static {v0, p1, p2, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/transport/j;)I

    .line 11
    invoke-virtual {p5, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->hasConnectResp()Z

    move-result p5

    if-nez p5, :cond_0

    .line 13
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error, device didn\'t start with a connectResponse message, found: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p2

    invoke-static {p2}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p5

    invoke-virtual {p5}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getVersion()I

    move-result p5

    const/4 v2, 0x2

    invoke-static {v2, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    sput p5, Lcom/ifengyu/intercom/i/d0;->a:I

    .line 15
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p5

    invoke-direct {p0, p3, p5}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/node/d;

    move-result-object p5

    .line 16
    sget-object v3, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doDolphinHandshake: isWaitingConfirm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-boolean v3, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    if-eqz v3, :cond_2

    .line 18
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    :try_start_1
    invoke-static {v0, p1, p2, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/transport/j;)I

    .line 20
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->hasConnectResp()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getVersion()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sput p1, Lcom/ifengyu/intercom/i/d0;->a:I

    .line 22
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    .line 23
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/node/d;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_1

    .line 24
    :try_start_2
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p3, "connect failed, refused or timeout"

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-object p5, p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p5, p1

    goto :goto_2

    .line 25
    :catch_1
    :goto_1
    :try_start_3
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "error while waiting for confirm"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return-object p5

    :catch_2
    move-exception p1

    .line 26
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p3, "error while connecting to device:"

    invoke-static {p2, p3, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/g;

    .line 28
    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/node/g;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    .line 1
    sget-object p5, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "doSealHandshake: start..."

    invoke-static {p5, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object p5

    .line 3
    invoke-static {p3}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x4e21

    .line 4
    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {p5, p2, v0, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    .line 6
    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    .line 7
    invoke-static {p5, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;

    move-result-object p2

    .line 8
    instance-of v0, p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    if-nez v0, :cond_0

    .line 9
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "error, device didn\'t start with a connectResponse message"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 10
    :cond_0
    check-cast p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    invoke-direct {p0, p3, p2}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;)Lcom/ifengyu/intercom/node/d;

    move-result-object p2

    .line 11
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSealHandshake: isWaitingConfirm = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/p;->f:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_2

    .line 13
    :try_start_1
    invoke-static {p5, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;

    move-result-object p1

    .line 14
    instance-of p4, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    if-eqz p4, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    .line 16
    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    invoke-direct {p0, p3, p1}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;)Lcom/ifengyu/intercom/node/d;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_1

    .line 17
    :try_start_2
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p3, "connect failed, refused or timeout"

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, p1

    goto :goto_2

    .line 18
    :catch_1
    :goto_1
    :try_start_3
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p3, "error while waiting for confirm"

    invoke-static {p1, p3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return-object p2

    :catch_2
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v2
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/g;

    .line 22
    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/node/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    .line 1
    sget-object p5, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "doSharkHandshake: start..."

    invoke-static {p5, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object p5

    .line 3
    invoke-static {p3}, Lcom/ifengyu/intercom/node/transport/g;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x4e21

    .line 4
    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {p5, p2, v0, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    .line 6
    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    .line 7
    invoke-static {p5, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->c(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;

    move-result-object p2

    .line 8
    instance-of v0, p2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    if-nez v0, :cond_0

    .line 9
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "error, device didn\'t start with a connectResponse message"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 10
    :cond_0
    check-cast p2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    invoke-direct {p0, p3, p2}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;)Lcom/ifengyu/intercom/node/d;

    move-result-object p2

    .line 11
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSharkHandshake: isWaitingConfirm = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/p;->f:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_2

    .line 13
    :try_start_1
    invoke-static {p5, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->c(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;

    move-result-object p1

    .line 14
    instance-of p4, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    if-eqz p4, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    .line 16
    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    invoke-direct {p0, p3, p1}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;)Lcom/ifengyu/intercom/node/d;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_1

    .line 17
    :try_start_2
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p3, "connect failed, refused or timeout"

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, p1

    goto :goto_2

    .line 18
    :catch_1
    :goto_1
    :try_start_3
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p3, "error while waiting for confirm"

    invoke-static {p1, p3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return-object p2

    :catch_2
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v2
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/node/transport/j;
    .locals 2

    .line 210
    new-instance v0, Lcom/ifengyu/intercom/node/transport/j;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->c:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/transport/j;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/node/g;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/ConnectionConfiguration;ILandroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "startProcessLoop()"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/node/p;->g:Ljava/io/InputStream;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/node/p;->h:Ljava/io/OutputStream;

    .line 4
    iput-object p3, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    .line 5
    iput-object p4, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    .line 6
    iput p5, p0, Lcom/ifengyu/intercom/node/p;->k:I

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/node/p;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 9
    :try_start_0
    iget-object p2, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    :cond_0
    new-instance p2, Lcom/ifengyu/intercom/node/p$a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/node/p$a;-><init>(Lcom/ifengyu/intercom/node/p;)V

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/util/concurrent/ExecutorService;

    .line 11
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iput-object p2, p1, Lcom/ifengyu/intercom/node/transport/j;->a:Ljava/lang/Thread;

    .line 13
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "before doHandshake()"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object p1

    iget-object p1, p1, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    iget-object p2, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/node/q/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/ifengyu/intercom/node/p;->l:Ljava/lang/String;

    .line 16
    iget-object p4, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result p4

    if-ne p4, p3, :cond_4

    .line 17
    :cond_2
    iget-object p4, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(I)V

    goto :goto_0

    .line 18
    :cond_3
    iput-object p2, p0, Lcom/ifengyu/intercom/node/p;->l:Ljava/lang/String;

    .line 19
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object p4, p0, Lcom/ifengyu/intercom/node/p;->l:Ljava/lang/String;

    invoke-virtual {p1, p4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result p1

    if-nez p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(I)V

    .line 22
    :cond_5
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "config.getDeviceType : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p5}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result p1

    if-eq p1, p3, :cond_9

    const/4 p3, 0x4

    if-eq p1, p3, :cond_8

    const/4 p3, 0x5

    if-eq p1, p3, :cond_7

    const/4 p3, 0x6

    if-eq p1, p3, :cond_6

    :goto_1
    move-object v6, p2

    goto :goto_2

    .line 24
    :cond_6
    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->g:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->h:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/p;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;

    move-result-object p2

    goto :goto_1

    .line 25
    :cond_7
    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->g:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->h:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/p;->c(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;

    move-result-object p2

    goto :goto_1

    .line 26
    :cond_8
    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->g:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->h:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/p;->d(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;

    move-result-object p2

    goto :goto_1

    .line 27
    :cond_9
    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->g:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->h:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/p;->b(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;

    move-result-object p2

    goto :goto_1

    .line 28
    :goto_2
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "doHandshake end"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->g:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->h:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v5, p0, Lcom/ifengyu/intercom/node/p;->l:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/node/p;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Ljava/lang/String;Lcom/ifengyu/intercom/node/d;)V

    return-void

    :catchall_0
    move-exception p2

    .line 30
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .line 194
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallableEnded: nodeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/f;

    .line 196
    :try_start_0
    iget-object v1, v0, Lcom/ifengyu/intercom/node/f;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    sget-object v1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "Got exception while close inputStream"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/ifengyu/intercom/node/f;->d:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 199
    :catch_1
    sget-object v1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "Got exception while close outputStream"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_1
    :try_start_2
    iget-object v1, v0, Lcom/ifengyu/intercom/node/f;->b:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ifengyu/intercom/node/f;->a:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "onCallableEnded - both reader and writer threads are already closed"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 203
    :cond_0
    iget-object p1, v0, Lcom/ifengyu/intercom/node/f;->b:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 204
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "onCallableEnded - stopping rx thread"

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p1, v0, Lcom/ifengyu/intercom/node/f;->b:Ljava/util/concurrent/Future;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 206
    :cond_1
    iget-object p1, v0, Lcom/ifengyu/intercom/node/f;->a:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    .line 207
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "onCallableEnded - stopping tx thread"

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, v0, Lcom/ifengyu/intercom/node/f;->a:Ljava/util/concurrent/Future;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public b()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/ifengyu/intercom/node/p;->k:I

    return v0
.end method
