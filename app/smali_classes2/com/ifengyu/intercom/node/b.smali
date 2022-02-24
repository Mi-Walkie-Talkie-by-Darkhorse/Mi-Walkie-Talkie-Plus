.class public Lcom/ifengyu/intercom/node/b;
.super Ljava/lang/Object;
.source "BtKeyCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/node/b$a;->a(Lcom/ifengyu/intercom/node/b$a;)I

    .line 3
    invoke-static {p1}, Lcom/ifengyu/intercom/node/b$a;->b(Lcom/ifengyu/intercom/node/b$a;)Lcom/ifengyu/intercom/node/btkey/a;

    return-void
.end method

.method public static a([BI)Lcom/ifengyu/intercom/node/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/node/b$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/b$a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/b$a;->a(I)Lcom/ifengyu/intercom/node/b$a;

    const/16 v1, 0x4e23

    const-string v2, "BtKeyCommand"

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4e24

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;->a([B)Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;

    move-result-object p0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btkeyDevParam:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/b$a;->a(Lcom/ifengyu/intercom/node/btkey/a;)Lcom/ifengyu/intercom/node/b$a;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/ifengyu/intercom/node/btkey/BtKeyButtonEvent;->a([B)Lcom/ifengyu/intercom/node/btkey/BtKeyButtonEvent;

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btnEvent:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btkey/BtKeyButtonEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/b$a;->a(Lcom/ifengyu/intercom/node/btkey/a;)Lcom/ifengyu/intercom/node/b$a;

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/b$a;->a()Lcom/ifengyu/intercom/node/b;

    move-result-object p0

    return-object p0
.end method
