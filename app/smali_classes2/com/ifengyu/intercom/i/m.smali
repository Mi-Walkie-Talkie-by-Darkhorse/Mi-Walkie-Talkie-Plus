.class public Lcom/ifengyu/intercom/i/m;
.super Ljava/lang/Object;
.source "BtKeyCmdUtils.java"


# direct methods
.method public static a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/a;->a()[B

    move-result-object v0

    const/4 v1, 0x6

    const/16 v2, 0x4e24

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(I[BI)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/i/m;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method private static a(Lcom/ifengyu/intercom/node/SendDataWrap;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z

    return-void
.end method
