.class public Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;
.super Lcom/ifengyu/intercom/node/btkey/a;
.source "BtKeyConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;
    }
.end annotation


# instance fields
.field private a:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btkey/a;-><init>()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->b:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->c:Ljava/lang/String;

    return-void
.end method

.method public static a([B)Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;

    invoke-direct {v1}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_7

    add-int/lit8 v3, v2, 0x1

    .line 6
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    add-int/lit8 v5, v3, 0x1

    .line 7
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v6, 0x2

    if-eq v3, v4, :cond_2

    if-eq v3, v6, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a(I)V

    goto :goto_1

    .line 9
    :cond_2
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_3

    .line 10
    sget-object v3, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->c:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a(Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;)V

    goto :goto_1

    :cond_3
    if-ne v3, v4, :cond_4

    .line 11
    sget-object v3, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->d:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a(Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;)V

    goto :goto_1

    :cond_4
    if-ne v3, v6, :cond_5

    .line 12
    sget-object v3, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->e:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a(Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 13
    sget-object v3, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->f:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a(Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    :cond_7
    return-object v1

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->b:I

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtKeyConnect{connCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", btmac=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
