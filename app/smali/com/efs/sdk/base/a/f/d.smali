.class public Lcom/efs/sdk/base/a/f/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public code:I

.field public data:Ljava/lang/String;

.field public extra:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public succ:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/f/d;->succ:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/efs/sdk/base/a/f/d;->code:I

    const-string v0, ""

    iput-object v0, p0, Lcom/efs/sdk/base/a/f/d;->data:Ljava/lang/String;

    return-void
.end method
