.class final Lcom/efs/sdk/pa/a/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/pa/a/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/pa/a/b$a;


# direct methods
.method constructor <init>(Lcom/efs/sdk/pa/a/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/pa/a/b$a$1;->a:Lcom/efs/sdk/pa/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/pa/a/b$a$1;->a:Lcom/efs/sdk/pa/a/b$a;

    .line 2
    iget-wide v1, v0, Lcom/efs/sdk/pa/a/b$a;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/efs/sdk/pa/a/b$a;->b:J

    const/4 v0, 0x1

    return v0
.end method
