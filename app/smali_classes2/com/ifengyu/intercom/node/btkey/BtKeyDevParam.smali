.class public Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;
.super Lcom/ifengyu/intercom/node/btkey/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;
    }
.end annotation


# instance fields
.field private a:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btkey/a;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->b:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;->a:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;->b:I

    return-void
.end method

.method public static a([B)Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;

    invoke-direct {v1}, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;->a(I)V

    goto :goto_1

    :cond_2
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->c:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;->a(Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    :cond_4
    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;->b:I

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;->a:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtKeyDevParam{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;->a:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
