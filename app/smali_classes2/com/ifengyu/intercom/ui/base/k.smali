.class public abstract Lcom/ifengyu/intercom/ui/base/k;
.super Lcom/ifengyu/intercom/ui/base/n;
.source "BaseFragment.java"


# instance fields
.field protected y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/n;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-void
.end method

.method private B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    return-object v0
.end method

.method private synthetic G2(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "camera"

    const-string v1, "record"

    const-string v2, "location"

    const-string v3, "storage"

    const/4 v4, 0x3

    const-string v5, "android.permission.RECORD_AUDIO"

    const/4 v6, 0x2

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v8, 0x1

    const-string v9, "android.permission.CAMERA"

    const/4 v10, 0x0

    const-string v11, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v12, -0x1

    if-eqz p2, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    :goto_0
    const/4 v4, -0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-static {v1}, Lcom/ifengyu/intercom/p/j0;->q(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->Q2()V

    goto/16 :goto_4

    .line 5
    :pswitch_1
    invoke-static {v3}, Lcom/ifengyu/intercom/p/j0;->q(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->R2()V

    goto/16 :goto_4

    .line 7
    :pswitch_2
    invoke-static {v0}, Lcom/ifengyu/intercom/p/j0;->q(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->O2()V

    goto :goto_4

    .line 9
    :pswitch_3
    invoke-static {v2}, Lcom/ifengyu/intercom/p/j0;->q(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->P2()V

    goto :goto_4

    .line 11
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_1

    :goto_2
    const/4 v4, -0x1

    goto :goto_3

    :sswitch_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :sswitch_5
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x2

    goto :goto_3

    :sswitch_6
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    :sswitch_7
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :cond_8
    :goto_3
    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 12
    :pswitch_4
    invoke-static {v1}, Lcom/ifengyu/intercom/p/j0;->i(Ljava/lang/String;)V

    const p1, 0x7f110034

    .line 13
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->U2(I)V

    goto :goto_4

    .line 14
    :pswitch_5
    invoke-static {v3}, Lcom/ifengyu/intercom/p/j0;->i(Ljava/lang/String;)V

    const p1, 0x7f110035

    .line 15
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->U2(I)V

    goto :goto_4

    .line 16
    :pswitch_6
    invoke-static {v0}, Lcom/ifengyu/intercom/p/j0;->i(Ljava/lang/String;)V

    const p1, 0x7f110032

    .line 17
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->U2(I)V

    goto :goto_4

    .line 18
    :pswitch_7
    invoke-static {v2}, Lcom/ifengyu/intercom/p/j0;->i(Ljava/lang/String;)V

    const p1, 0x7f110033

    .line 19
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->U2(I)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x70918bc1 -> :sswitch_3
        0x1b9efa65 -> :sswitch_2
        0x516a29a7 -> :sswitch_1
        0x6d24f988 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x70918bc1 -> :sswitch_7
        0x1b9efa65 -> :sswitch_6
        0x516a29a7 -> :sswitch_5
        0x6d24f988 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic I2(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic J2(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/library/utils/m;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic L2(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic M2(Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->S2(Ljava/lang/String;)V

    return-void
.end method

.method private S2(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lb/e/a/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/e/a/b;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lb/e/a/b;->l([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/base/d;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/base/d;-><init>(Lcom/ifengyu/intercom/ui/base/k;Ljava/lang/String;)V

    sget-object p1, Lcom/ifengyu/intercom/ui/base/j;->a:Lcom/ifengyu/intercom/ui/base/j;

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private U2(I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110302

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 3
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object p1, Lcom/ifengyu/intercom/ui/base/b;->a:Lcom/ifengyu/intercom/ui/base/b;

    const/4 v1, 0x0

    const v2, 0x7f1100bd

    const/4 v3, 0x2

    .line 4
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance p1, Lcom/ifengyu/intercom/ui/base/a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/base/a;-><init>(Lcom/ifengyu/intercom/ui/base/k;)V

    const v2, 0x7f1101d6

    .line 5
    invoke-virtual {v0, v1, v2, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 6
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private V2(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const v0, 0x7f11005f

    goto :goto_1

    :pswitch_1
    const v0, 0x7f110060

    goto :goto_1

    :pswitch_2
    const v0, 0x7f11005d

    goto :goto_1

    :pswitch_3
    const v0, 0x7f11005e

    :goto_1
    if-gtz v0, :cond_4

    return-void

    .line 2
    :cond_4
    new-instance v3, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v4, 0x7f110302

    .line 3
    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v3, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 4
    invoke-virtual {v3, v0}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v0, 0x7f1100bd

    sget-object v4, Lcom/ifengyu/intercom/ui/base/c;->a:Lcom/ifengyu/intercom/ui/base/c;

    .line 5
    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v3, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v0, 0x7f1101d5

    new-instance v1, Lcom/ifengyu/intercom/ui/base/e;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/base/e;-><init>(Lcom/ifengyu/intercom/ui/base/k;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, v2, v0, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v3, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 7
    invoke-virtual {v3, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x70918bc1 -> :sswitch_3
        0x1b9efa65 -> :sswitch_2
        0x516a29a7 -> :sswitch_1
        0x6d24f988 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected C2()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;->B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->y()V

    return-void
.end method

.method protected D2(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected E2()V
    .locals 0

    return-void
.end method

.method protected F2()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;->B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->z()Z

    move-result v0

    return v0
.end method

.method public synthetic H2(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/k;->G2(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected K1(Landroid/content/Context;II)I
    .locals 0

    const/4 p2, 0x4

    if-eq p3, p2, :cond_1

    const/16 p2, 0x8

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    .line 1
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic K2(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/k;->J2(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected M1(Landroid/content/Context;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic N2(Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/base/k;->M2(Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected O2()V
    .locals 0

    return-void
.end method

.method protected P2()V
    .locals 0

    return-void
.end method

.method protected Q2()V
    .locals 0

    return-void
.end method

.method protected R2()V
    .locals 0

    return-void
.end method

.method protected T2(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1
    invoke-static {v1}, Lcom/ifengyu/library/utils/m;->b([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "android.permission.CAMERA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->Q2()V

    goto :goto_2

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->R2()V

    goto :goto_2

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->O2()V

    goto :goto_2

    .line 6
    :pswitch_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->P2()V

    :goto_2
    return v0

    .line 7
    :cond_4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->V2(Ljava/lang/String;)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70918bc1 -> :sswitch_3
        0x1b9efa65 -> :sswitch_2
        0x516a29a7 -> :sswitch_1
        0x6d24f988 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected W2()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;->B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    move-result-object v0

    const v1, 0x7f11037b

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->F(Ljava/lang/String;)V

    return-void
.end method

.method protected X2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;->B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->F(Ljava/lang/String;)V

    return-void
.end method

.method protected Y2(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;->B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->F(Ljava/lang/String;)V

    return-void
.end method

.method protected Z2(Ljava/lang/String;ILcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;->B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->G(Ljava/lang/String;ILcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method protected a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;->B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->H(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method protected b3()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;->B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->I()V

    return-void
.end method

.method protected c3(ZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;->B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->K(ZLjava/lang/String;)V

    return-void
.end method

.method protected d3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;->B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->L(Ljava/lang/String;)V

    return-void
.end method

.method protected e3(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;->B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->L(Ljava/lang/String;)V

    return-void
.end method

.method protected f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;->B2()Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->M(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    return-void
.end method

.method protected g2(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->g2(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected n2(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->n2(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->E2()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->D2(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method
