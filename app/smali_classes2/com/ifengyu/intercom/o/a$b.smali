.class Lcom/ifengyu/intercom/o/a$b;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/o/a;->g(Lokhttp3/Call;Ljava/lang/Exception;Lcom/ifengyu/intercom/o/c/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/o/c/a;

.field final synthetic b:Lokhttp3/Call;

.field final synthetic c:Ljava/lang/Exception;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/o/a;Lcom/ifengyu/intercom/o/c/a;Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/intercom/o/a$b;->a:Lcom/ifengyu/intercom/o/c/a;

    iput-object p3, p0, Lcom/ifengyu/intercom/o/a$b;->b:Lokhttp3/Call;

    iput-object p4, p0, Lcom/ifengyu/intercom/o/a$b;->c:Ljava/lang/Exception;

    iput p5, p0, Lcom/ifengyu/intercom/o/a$b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/o/a$b;->a:Lcom/ifengyu/intercom/o/c/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/o/a$b;->b:Lokhttp3/Call;

    iget-object v2, p0, Lcom/ifengyu/intercom/o/a$b;->c:Ljava/lang/Exception;

    iget v3, p0, Lcom/ifengyu/intercom/o/a$b;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/intercom/o/c/a;->d(Lokhttp3/Call;Ljava/lang/Exception;I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/o/a$b;->a:Lcom/ifengyu/intercom/o/c/a;

    iget v1, p0, Lcom/ifengyu/intercom/o/a$b;->d:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/o/c/a;->b(I)V

    return-void
.end method
