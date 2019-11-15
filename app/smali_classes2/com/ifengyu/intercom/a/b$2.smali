.class Lcom/ifengyu/intercom/a/b$2;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/a/b;->a(Lokhttp3/Call;Ljava/lang/Exception;Lcom/ifengyu/intercom/a/b/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/a/b/b;

.field final synthetic b:Lokhttp3/Call;

.field final synthetic c:Ljava/lang/Exception;

.field final synthetic d:I

.field final synthetic e:Lcom/ifengyu/intercom/a/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/a/b;Lcom/ifengyu/intercom/a/b/b;Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/a/b$2;->e:Lcom/ifengyu/intercom/a/b;

    iput-object p2, p0, Lcom/ifengyu/intercom/a/b$2;->a:Lcom/ifengyu/intercom/a/b/b;

    iput-object p3, p0, Lcom/ifengyu/intercom/a/b$2;->b:Lokhttp3/Call;

    iput-object p4, p0, Lcom/ifengyu/intercom/a/b$2;->c:Ljava/lang/Exception;

    iput p5, p0, Lcom/ifengyu/intercom/a/b$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/a/b$2;->a:Lcom/ifengyu/intercom/a/b/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/a/b$2;->b:Lokhttp3/Call;

    iget-object v2, p0, Lcom/ifengyu/intercom/a/b$2;->c:Ljava/lang/Exception;

    iget v3, p0, Lcom/ifengyu/intercom/a/b$2;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/intercom/a/b/b;->a(Lokhttp3/Call;Ljava/lang/Exception;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/a/b$2;->a:Lcom/ifengyu/intercom/a/b/b;

    iget v1, p0, Lcom/ifengyu/intercom/a/b$2;->d:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/a/b/b;->a(I)V

    return-void
.end method
