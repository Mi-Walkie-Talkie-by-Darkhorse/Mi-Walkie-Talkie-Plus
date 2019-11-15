.class Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$1;
.super Ljava/lang/Object;
.source "DropCover.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a(Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
