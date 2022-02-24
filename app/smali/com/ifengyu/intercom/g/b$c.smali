.class Lcom/ifengyu/intercom/g/b$c;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/g/b;->a(Ljava/lang/Object;Lcom/ifengyu/intercom/g/d/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/g/d/b;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/g/b;Lcom/ifengyu/intercom/g/d/b;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/intercom/g/b$c;->a:Lcom/ifengyu/intercom/g/d/b;

    iput-object p3, p0, Lcom/ifengyu/intercom/g/b$c;->b:Ljava/lang/Object;

    iput p4, p0, Lcom/ifengyu/intercom/g/b$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/g/b$c;->a:Lcom/ifengyu/intercom/g/d/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/g/b$c;->b:Ljava/lang/Object;

    iget v2, p0, Lcom/ifengyu/intercom/g/b$c;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/g/d/b;->a(Ljava/lang/Object;I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/g/b$c;->a:Lcom/ifengyu/intercom/g/d/b;

    iget v1, p0, Lcom/ifengyu/intercom/g/b$c;->c:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/g/d/b;->a(I)V

    return-void
.end method
