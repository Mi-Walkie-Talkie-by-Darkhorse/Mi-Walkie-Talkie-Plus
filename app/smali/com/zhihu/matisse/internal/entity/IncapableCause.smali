.class public Lcom/zhihu/matisse/internal/entity/IncapableCause;
.super Ljava/lang/Object;
.source "IncapableCause.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/entity/IncapableCause$Form;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/zhihu/matisse/internal/entity/IncapableCause;->a:I

    .line 3
    iput-object p1, p0, Lcom/zhihu/matisse/internal/entity/IncapableCause;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/zhihu/matisse/internal/entity/IncapableCause;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p1, Lcom/zhihu/matisse/internal/entity/IncapableCause;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 2
    iget-object p1, p1, Lcom/zhihu/matisse/internal/entity/IncapableCause;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/zhihu/matisse/internal/entity/IncapableCause;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/entity/IncapableCause;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/b;->w1(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/matisse/internal/ui/widget/b;

    move-result-object p1

    .line 4
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/zhihu/matisse/internal/ui/widget/b;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
