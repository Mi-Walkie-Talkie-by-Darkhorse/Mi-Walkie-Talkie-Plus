.class public Lcom/ifengyu/intercom/node/c;
.super Ljava/lang/Object;
.source "BtKeyCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/c$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/ifengyu/intercom/node/btkey/a;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/ifengyu/intercom/node/c$a;->a(Lcom/ifengyu/intercom/node/c$a;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/c;->a:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/c$a;->b(Lcom/ifengyu/intercom/node/c$a;)Lcom/ifengyu/intercom/node/btkey/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/c;->b:Lcom/ifengyu/intercom/node/btkey/a;

    return-void
.end method

.method public static a([BI)Lcom/ifengyu/intercom/node/c;
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/node/c$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/c$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/c$a;->a(I)Lcom/ifengyu/intercom/node/c$a;

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/c$a;->a()Lcom/ifengyu/intercom/node/c;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lcom/ifengyu/intercom/node/btkey/BtKeyButtonEvent;->a([B)Lcom/ifengyu/intercom/node/btkey/BtKeyButtonEvent;

    move-result-object v1

    const-string v2, "BtKeyCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btnEvent:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btkey/BtKeyButtonEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/c$a;->a(Lcom/ifengyu/intercom/node/btkey/a;)Lcom/ifengyu/intercom/node/c$a;

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;->a([B)Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;

    move-result-object v1

    const-string v2, "BtKeyCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btkeyDevParam:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/c$a;->a(Lcom/ifengyu/intercom/node/btkey/a;)Lcom/ifengyu/intercom/node/c$a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4e23
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
