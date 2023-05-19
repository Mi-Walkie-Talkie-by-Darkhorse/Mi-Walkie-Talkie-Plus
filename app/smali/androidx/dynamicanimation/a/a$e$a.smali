.class Landroidx/dynamicanimation/a/a$e$a;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/dynamicanimation/a/a$e;-><init>(Landroidx/dynamicanimation/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/dynamicanimation/a/a$e;


# direct methods
.method constructor <init>(Landroidx/dynamicanimation/a/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/dynamicanimation/a/a$e$a;->a:Landroidx/dynamicanimation/a/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/dynamicanimation/a/a$e$a;->a:Landroidx/dynamicanimation/a/a$e;

    iget-object p1, p1, Landroidx/dynamicanimation/a/a$c;->a:Landroidx/dynamicanimation/a/a$a;

    invoke-virtual {p1}, Landroidx/dynamicanimation/a/a$a;->a()V

    return-void
.end method
