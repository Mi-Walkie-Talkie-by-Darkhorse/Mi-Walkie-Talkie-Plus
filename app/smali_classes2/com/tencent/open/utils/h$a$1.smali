.class Lcom/tencent/open/utils/h$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/utils/h$a;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/tencent/open/utils/h$a;


# direct methods
.method constructor <init>(Lcom/tencent/open/utils/h$a;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/open/utils/h$a$1;->b:Lcom/tencent/open/utils/h$a;

    iput-object p2, p0, Lcom/tencent/open/utils/h$a$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/utils/h$a$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/open/utils/h$a$1;->b:Lcom/tencent/open/utils/h$a;

    invoke-virtual {v0}, Lcom/tencent/open/utils/h$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/open/utils/h$a$1;->b:Lcom/tencent/open/utils/h$a;

    invoke-virtual {v1}, Lcom/tencent/open/utils/h$a;->a()V

    throw v0
.end method
