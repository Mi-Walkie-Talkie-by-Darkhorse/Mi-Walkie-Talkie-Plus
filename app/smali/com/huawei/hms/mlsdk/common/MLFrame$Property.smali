.class public Lcom/huawei/hms/mlsdk/common/MLFrame$Property;
.super Ljava/lang/Object;
.source "MLFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/mlsdk/common/MLFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;,
        Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;
    }
.end annotation


# static fields
.field public static final IMAGE_FORMAT_NV21:I = 0x11

.field public static final IMAGE_FORMAT_YV12:I = 0x32315659

.field public static final SCREEN_FIRST_QUADRANT:I = 0x0

.field public static final SCREEN_FOURTH_QUADRANT:I = 0x3

.field public static final SCREEN_SECOND_QUADRANT:I = 0x1

.field public static final SCREEN_THIRD_QUADRANT:I = 0x2


# instance fields
.field private ext:Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

.field private formatType:I

.field private height:I

.field private itemIdentity:I

.field private quadrant:I

.field private timestamp:J

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->quadrant:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->formatType:I

    .line 5
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->itemIdentity:I

    .line 6
    new-instance v0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;

    invoke-direct {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;->build()Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->ext:Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    return-void
.end method

.method private constructor <init>(IIIIIJLcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->quadrant:I

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->formatType:I

    .line 21
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->itemIdentity:I

    .line 22
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->width:I

    .line 23
    iput p2, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->height:I

    .line 24
    iput p3, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->quadrant:I

    .line 25
    iput p4, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->formatType:I

    .line 26
    iput p5, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->itemIdentity:I

    .line 27
    iput-wide p6, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->timestamp:J

    .line 28
    iput-object p8, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->ext:Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    return-void
.end method

.method synthetic constructor <init>(IIIIIJLcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;Lcom/huawei/hms/mlsdk/common/MLFrame$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;-><init>(IIIIIJLcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;)V

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->quadrant:I

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->formatType:I

    .line 10
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->itemIdentity:I

    .line 11
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->width:I

    .line 12
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->height:I

    .line 13
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getFormatType()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->formatType:I

    .line 14
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getQuadrant()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->quadrant:I

    .line 15
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getItemIdentity()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->itemIdentity:I

    .line 16
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->timestamp:J

    .line 17
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getExt()Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->ext:Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->width:I

    return p0
.end method

.method static synthetic access$002(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->width:I

    return p1
.end method

.method static synthetic access$100(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->height:I

    return p0
.end method

.method static synthetic access$1002(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->ext:Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    return-object p1
.end method

.method static synthetic access$102(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->height:I

    return p1
.end method

.method static synthetic access$602(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->formatType:I

    return p1
.end method

.method static synthetic access$702(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->itemIdentity:I

    return p1
.end method

.method static synthetic access$802(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->timestamp:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->quadrant:I

    return p1
.end method


# virtual methods
.method public getExt()Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->ext:Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    return-object v0
.end method

.method public getFormatType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->formatType:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->height:I

    return v0
.end method

.method public getItemIdentity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->itemIdentity:I

    return v0
.end method

.method public getQuadrant()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->quadrant:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->timestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->width:I

    return v0
.end method

.method public resetWidthAndHeight()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->quadrant:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->width:I

    .line 3
    iget v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->height:I

    iput v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->width:I

    .line 4
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->height:I

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->quadrant:I

    return-void
.end method
