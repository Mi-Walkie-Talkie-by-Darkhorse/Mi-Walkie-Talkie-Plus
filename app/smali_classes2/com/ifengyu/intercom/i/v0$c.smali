.class Lcom/ifengyu/intercom/i/v0$c;
.super Ljava/lang/Object;
.source "LiteBleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/i/v0;->l1(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Lcom/ifengyu/intercom/i/v0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/i/v0;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/v0$c;->c:Lcom/ifengyu/intercom/i/v0;

    iput-object p2, p0, Lcom/ifengyu/intercom/i/v0$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/i/v0$c;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0$c;->c:Lcom/ifengyu/intercom/i/v0;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/v0$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/i/v0$c;->b:[B

    new-instance v3, Lcom/ifengyu/intercom/i/v0$c$a;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/i/v0$c$a;-><init>(Lcom/ifengyu/intercom/i/v0$c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/intercom/i/v0;->u1(Ljava/lang/String;[BLcom/ifengyu/blelib/b/c;)V

    return-void
.end method
