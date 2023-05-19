.class public Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "NetDeviceProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider<",
        "Lcom/ifengyu/intercom/models/DeviceModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:[I

.field private static final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e;->d:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800ea
        0x7f0800ec
        0x7f0800ed
        0x7f0800ee
        0x7f0800ef
        0x7f0800f0
        0x7f0800f1
        0x7f0800f2
        0x7f0800f3
        0x7f0800eb
    .end array-data

    :array_1
    .array-data 4
        0x7f0800f4
        0x7f0800f6
        0x7f0800f7
        0x7f0800f8
        0x7f0800f9
        0x7f0800fa
        0x7f0800fb
        0x7f0800fc
        0x7f0800fd
        0x7f0800f5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    return-void
.end method

.method private u(I)I
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    const/16 p1, 0x64

    :cond_1
    :goto_0
    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    sub-int/2addr p1, v0

    const/16 v0, 0x9

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    if-le p1, v0, :cond_3

    const/16 p1, 0x9

    :cond_3
    :goto_1
    return p1
.end method


# virtual methods
.method public bridge synthetic a(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method public g()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public h()I
    .locals 1

    const v0, 0x7f0c00e0

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 12
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f09010e

    .line 1
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->R:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->t3()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;->setEnabled(Z)V

    .line 3
    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->R:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->t3()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 4
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v3

    const v4, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v1, v3, v4}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    const v0, 0x7f090152

    .line 5
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09015a

    .line 6
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f090158

    .line 7
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f090157

    .line 8
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090155

    .line 9
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f090154

    .line 10
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090278

    .line 11
    invoke-virtual {p1, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 12
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f11017c

    .line 13
    invoke-static {v8}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f09026e

    .line 14
    invoke-virtual {p1, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v8, 0x7f080101

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getNetDeviceModel()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getNetDeviceModel()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getBattery()I

    move-result v8

    const/16 v9, 0x3c

    if-le v8, v9, :cond_0

    const v9, 0x7f110160

    .line 18
    invoke-static {v9}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v9, 0x14

    if-le v8, v9, :cond_1

    const v9, 0x7f110162

    .line 19
    invoke-static {v9}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v9, 0x7f110161

    .line 20
    invoke-static {v9}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :goto_0
    invoke-direct {p0, v8}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e;->u(I)I

    move-result v8

    .line 22
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getOnline()I

    move-result p1

    const v9, 0x7f0800e4

    const/4 v10, 0x0

    const v11, 0x7f060030

    if-ne p1, v2, :cond_3

    const p1, 0x7f060029

    .line 23
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    invoke-static {v11}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f060036

    .line 25
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f110176

    .line 26
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800e9

    .line 27
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    sget-object p1, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e;->d:[I

    aget p1, p1, v8

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    sget-object p1, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->R:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->t3()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const v9, 0x7f080119

    :goto_1
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 32
    :cond_3
    invoke-static {v11}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f06002f

    .line 33
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f110175

    .line 35
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800e8

    .line 36
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    sget-object p1, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e;->e:[I

    aget p1, p1, v8

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    sget-object p1, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->R:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->t3()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x4

    :goto_2
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    :cond_5
    :goto_3
    new-instance p1, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e$a;

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e;Lcom/ifengyu/intercom/models/DeviceModel;)V

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
