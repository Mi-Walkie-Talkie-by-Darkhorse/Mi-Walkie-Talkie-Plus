.class public Lcom/ifengyu/intercom/b/h;
.super Ljava/lang/Object;
.source "BtKeyCmdUtils.java"


# direct methods
.method public static a()V
    .locals 3

    const/4 v0, 0x6

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/a;->a()[B

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(I[BI)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/h;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method private static a(Lcom/ifengyu/intercom/node/SendDataWrap;)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z

    return-void
.end method
