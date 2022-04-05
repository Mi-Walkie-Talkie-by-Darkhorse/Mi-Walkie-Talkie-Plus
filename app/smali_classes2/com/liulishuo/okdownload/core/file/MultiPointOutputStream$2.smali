.class Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->cancelAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;


# direct methods
.method constructor <init>(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$2;->this$0:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$2;->this$0:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->cancel()V

    return-void
.end method
