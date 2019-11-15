.class public final enum Lcom/amap/api/mapcore/util/dd;
.super Ljava/lang/Enum;
.source "StyleElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/mapcore/util/dd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/mapcore/util/dd;

.field public static final enum b:Lcom/amap/api/mapcore/util/dd;

.field public static final enum c:Lcom/amap/api/mapcore/util/dd;

.field public static final enum d:Lcom/amap/api/mapcore/util/dd;

.field public static final enum e:Lcom/amap/api/mapcore/util/dd;

.field public static final enum f:Lcom/amap/api/mapcore/util/dd;

.field public static final enum g:Lcom/amap/api/mapcore/util/dd;

.field public static final enum h:Lcom/amap/api/mapcore/util/dd;

.field public static final enum i:Lcom/amap/api/mapcore/util/dd;

.field public static final enum j:Lcom/amap/api/mapcore/util/dd;

.field public static final enum k:Lcom/amap/api/mapcore/util/dd;

.field public static final enum l:Lcom/amap/api/mapcore/util/dd;

.field private static final synthetic o:[Lcom/amap/api/mapcore/util/dd;


# instance fields
.field private m:Ljava/lang/String;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    const-string v1, "STYLE_ELEMENT_LABELFILL_OLD"

    const-string v2, "labels.text.fill"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/amap/api/mapcore/util/dd;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->a:Lcom/amap/api/mapcore/util/dd;

    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    const-string v1, "STYLE_ELEMENT_LABELSTROKE_OLD"

    const-string v2, "labels.text.stroke"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/amap/api/mapcore/util/dd;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->b:Lcom/amap/api/mapcore/util/dd;

    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    const-string v1, "STYLE_ELEMENT_GEOMETRYSTROKE_OLD"

    const-string v2, "geometry.stroke"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/amap/api/mapcore/util/dd;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->c:Lcom/amap/api/mapcore/util/dd;

    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    const-string v1, "STYLE_ELEMENT_GEOMETRYFILL_OLD"

    const-string v2, "geometry.fill"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/amap/api/mapcore/util/dd;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->d:Lcom/amap/api/mapcore/util/dd;

    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    const-string v1, "STYLE_ELEMENT_LABELFILL"

    const-string v2, "textFillColor"

    invoke-direct {v0, v1, v9, v2, v6}, Lcom/amap/api/mapcore/util/dd;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/dd;

    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    const-string v1, "STYLE_ELEMENT_LABELSTROKE"

    const/4 v2, 0x5

    const-string v3, "textStrokeColor"

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/amap/api/mapcore/util/dd;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->f:Lcom/amap/api/mapcore/util/dd;

    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    const-string v1, "STYLE_ELEMENT_GEOMETRYSTROKE"

    const/4 v2, 0x6

    const-string v3, "strokeColor"

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/amap/api/mapcore/util/dd;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->g:Lcom/amap/api/mapcore/util/dd;

    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    const-string v1, "STYLE_ELEMENT_GEOMETRYFILL"

    const/4 v2, 0x7

    const-string v3, "fillColor"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/amap/api/mapcore/util/dd;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->h:Lcom/amap/api/mapcore/util/dd;

    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    const-string v1, "STYLE_ELEMENT_GEOMETRYFILL1"

    const/16 v2, 0x8

    const-string v3, "color"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/amap/api/mapcore/util/dd;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->i:Lcom/amap/api/mapcore/util/dd;

    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    const-string v1, "STYLE_ELEMENT_GEOMETRYFILL2"

    const/16 v2, 0x9

    const-string v3, "textureName"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/amap/api/mapcore/util/dd;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->j:Lcom/amap/api/mapcore/util/dd;

    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    const-string v1, "STYLE_ELEMENT_BACKGROUNDFILL"

    const/16 v2, 0xa

    const-string v3, "backgroundColor"

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/amap/api/mapcore/util/dd;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->k:Lcom/amap/api/mapcore/util/dd;

    new-instance v0, Lcom/amap/api/mapcore/util/dd;

    const-string v1, "STYLE_ELEMENT_VISIBLE"

    const/16 v2, 0xb

    const-string v3, "visible"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/dd;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->l:Lcom/amap/api/mapcore/util/dd;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/amap/api/mapcore/util/dd;

    sget-object v1, Lcom/amap/api/mapcore/util/dd;->a:Lcom/amap/api/mapcore/util/dd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amap/api/mapcore/util/dd;->b:Lcom/amap/api/mapcore/util/dd;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amap/api/mapcore/util/dd;->c:Lcom/amap/api/mapcore/util/dd;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amap/api/mapcore/util/dd;->d:Lcom/amap/api/mapcore/util/dd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/dd;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/amap/api/mapcore/util/dd;->f:Lcom/amap/api/mapcore/util/dd;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amap/api/mapcore/util/dd;->g:Lcom/amap/api/mapcore/util/dd;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amap/api/mapcore/util/dd;->h:Lcom/amap/api/mapcore/util/dd;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amap/api/mapcore/util/dd;->i:Lcom/amap/api/mapcore/util/dd;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amap/api/mapcore/util/dd;->j:Lcom/amap/api/mapcore/util/dd;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amap/api/mapcore/util/dd;->k:Lcom/amap/api/mapcore/util/dd;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amap/api/mapcore/util/dd;->l:Lcom/amap/api/mapcore/util/dd;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/mapcore/util/dd;->o:[Lcom/amap/api/mapcore/util/dd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amap/api/mapcore/util/dd;->m:Ljava/lang/String;

    iput p4, p0, Lcom/amap/api/mapcore/util/dd;->n:I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Lcom/amap/api/mapcore/util/dd;->values()[Lcom/amap/api/mapcore/util/dd;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/dd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v3, Lcom/amap/api/mapcore/util/dd;->n:I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/mapcore/util/dd;
    .locals 1

    const-class v0, Lcom/amap/api/mapcore/util/dd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/dd;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/mapcore/util/dd;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore/util/dd;->o:[Lcom/amap/api/mapcore/util/dd;

    invoke-virtual {v0}, [Lcom/amap/api/mapcore/util/dd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/mapcore/util/dd;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->m:Ljava/lang/String;

    return-object v0
.end method
