.class Landroidx/dynamicanimation/a/a$e;
.super Landroidx/dynamicanimation/a/a$c;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final b:Landroid/view/Choreographer;

.field private final c:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method constructor <init>(Landroidx/dynamicanimation/a/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/a/a$c;-><init>(Landroidx/dynamicanimation/a/a$a;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/dynamicanimation/a/a$e;->b:Landroid/view/Choreographer;

    new-instance p1, Landroidx/dynamicanimation/a/a$e$a;

    invoke-direct {p1, p0}, Landroidx/dynamicanimation/a/a$e$a;-><init>(Landroidx/dynamicanimation/a/a$e;)V

    iput-object p1, p0, Landroidx/dynamicanimation/a/a$e;->c:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Landroidx/dynamicanimation/a/a$e;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Landroidx/dynamicanimation/a/a$e;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
