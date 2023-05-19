.class final Lcom/amap/api/maps/model/Gradient$a;
.super Ljava/lang/Object;
.source "Gradient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/model/Gradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/model/Gradient;

.field private final b:I

.field private final c:I

.field private final d:F


# direct methods
.method private constructor <init>(Lcom/amap/api/maps/model/Gradient;IIF)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/maps/model/Gradient$a;->a:Lcom/amap/api/maps/model/Gradient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/amap/api/maps/model/Gradient$a;->b:I

    .line 4
    iput p3, p0, Lcom/amap/api/maps/model/Gradient$a;->c:I

    .line 5
    iput p4, p0, Lcom/amap/api/maps/model/Gradient$a;->d:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/maps/model/Gradient;IIFB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/maps/model/Gradient$a;-><init>(Lcom/amap/api/maps/model/Gradient;IIF)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/maps/model/Gradient$a;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/maps/model/Gradient$a;->d:F

    return p0
.end method

.method static synthetic b(Lcom/amap/api/maps/model/Gradient$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/maps/model/Gradient$a;->b:I

    return p0
.end method

.method static synthetic c(Lcom/amap/api/maps/model/Gradient$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/maps/model/Gradient$a;->c:I

    return p0
.end method
