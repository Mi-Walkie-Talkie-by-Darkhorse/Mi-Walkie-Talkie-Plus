.class Lcom/yalantis/ucrop/view/GestureCropImageView$b;
.super Lcom/yalantis/ucrop/c/h$b;
.source "GestureCropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/view/GestureCropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yalantis/ucrop/view/GestureCropImageView;


# direct methods
.method private constructor <init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$b;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-direct {p0}, Lcom/yalantis/ucrop/c/h$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Lcom/yalantis/ucrop/view/GestureCropImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/GestureCropImageView$b;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yalantis/ucrop/c/h;)Z
    .locals 4

    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$b;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/c/h;->a()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$b;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-static {v2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->a(Lcom/yalantis/ucrop/view/GestureCropImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$b;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-static {v3}, Lcom/yalantis/ucrop/view/GestureCropImageView;->b(Lcom/yalantis/ucrop/view/GestureCropImageView;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yalantis/ucrop/view/GestureCropImageView;->d(FFF)V

    const/4 v0, 0x1

    return v0
.end method
