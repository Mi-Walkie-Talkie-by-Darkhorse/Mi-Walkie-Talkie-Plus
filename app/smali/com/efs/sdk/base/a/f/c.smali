.class public final Lcom/efs/sdk/base/a/f/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/efs/sdk/base/http/HttpResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/f/c;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/f/c;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/efs/sdk/base/a/f/c;->c:Lcom/efs/sdk/base/http/HttpResponse;

    return-void
.end method
