.class public Lcom/ifengyu/library/helper/a/a;
.super Ljava/lang/Object;
.source "BackHandlerHelper.java"


# direct methods
.method public static a(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/ifengyu/library/helper/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/ifengyu/library/helper/a/b;

    invoke-interface {p0}, Lcom/ifengyu/library/helper/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/helper/a/a;->a(Landroid/support/v4/app/FragmentManager;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Lcom/ifengyu/library/helper/a/a;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
