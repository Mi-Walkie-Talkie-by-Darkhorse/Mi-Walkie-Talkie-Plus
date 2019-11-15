.class public Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
.super Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
.source "BasicInfoWindow.java"


# static fields
.field public static final UNDEFINED_RES_ID:I

.field static mDescriptionId:I

.field static mImageId:I

.field static mSubDescriptionId:I

.field static mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    sput v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    sput v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    sput v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mImageId:I

    return-void
.end method

.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    sget v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->setResIds(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    new-instance v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow$1;-><init>(Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static setResIds(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id/bubble_title"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id/bubble_description"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id/bubble_subdescription"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id/bubble_image"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mImageId:I

    sget v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    if-eqz v1, :cond_0

    sget v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    if-eqz v1, :cond_0

    sget v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    if-eqz v1, :cond_0

    sget v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mImageId:I

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "OsmDroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BasicInfoWindow: unable to get res ids in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    return-void
.end method

.method public onOpen(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "OsmDroid"

    const-string v1, "Error trapped, BasicInfoWindow.open, mView is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    sget v2, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    sget v2, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    sget v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getSubDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method
