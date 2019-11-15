.class Lcom/ifengyu/intercom/a/b$3;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/a/b;->a(Ljava/lang/Object;Lcom/ifengyu/intercom/a/b/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/a/b/b;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:I

.field final synthetic d:Lcom/ifengyu/intercom/a/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/a/b;Lcom/ifengyu/intercom/a/b/b;Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/a/b$3;->d:Lcom/ifengyu/intercom/a/b;

    iput-object p2, p0, Lcom/ifengyu/intercom/a/b$3;->a:Lcom/ifengyu/intercom/a/b/b;

    iput-object p3, p0, Lcom/ifengyu/intercom/a/b$3;->b:Ljava/lang/Object;

    iput p4, p0, Lcom/ifengyu/intercom/a/b$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/a/b$3;->a:Lcom/ifengyu/intercom/a/b/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/a/b$3;->b:Ljava/lang/Object;

    iget v2, p0, Lcom/ifengyu/intercom/a/b$3;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/b/b;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/a/b$3;->a:Lcom/ifengyu/intercom/a/b/b;

    iget v1, p0, Lcom/ifengyu/intercom/a/b$3;->c:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/a/b/b;->a(I)V

    return-void
.end method
