.class Landroid/support/v7/app/AppCompatDelegateImplV11;
.super Landroid/support/v7/app/AppCompatDelegateImplV9;
.source "AppCompatDelegateImplV11.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xb
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV9;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    return-void
.end method


# virtual methods
.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->hasWindowFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
