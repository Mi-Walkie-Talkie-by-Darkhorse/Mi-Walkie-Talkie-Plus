.class public Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
.super Lorg/osmdroid/views/overlay/infowindow/InfoWindow;


# static fields
.field public static final UNDEFINED_RES_ID:I

.field static mDescriptionId:I

.field static mImageId:I

.field static mSubDescriptionId:I

.field static mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    sget p1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->setResIds(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    new-instance p2, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow$1;

    invoke-direct {p2, p0}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow$1;-><init>(Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static setResIds(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "id/bubble_title"

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "id/bubble_description"

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "id/bubble_subdescription"

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "id/bubble_image"

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sput p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mImageId:I

    sget v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    if-eqz v1, :cond_0

    sget v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    if-eqz v1, :cond_0

    sget v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicInfoWindow: unable to get res ids in "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OsmDroid"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    return-void
.end method

.method public onOpen(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    const-string p1, "OsmDroid"

    const-string v0, "Error trapped, BasicInfoWindow.open, mView is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget v3, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    sget v3, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    sget v2, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getSubDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
