.class public final enum Lcom/amap/api/col/l3/dm;
.super Ljava/lang/Enum;
.source "StyleElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amap/api/col/l3/dm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/col/l3/dm;

.field public static final enum b:Lcom/amap/api/col/l3/dm;

.field public static final enum c:Lcom/amap/api/col/l3/dm;

.field public static final enum d:Lcom/amap/api/col/l3/dm;

.field public static final enum e:Lcom/amap/api/col/l3/dm;

.field public static final enum f:Lcom/amap/api/col/l3/dm;

.field public static final enum g:Lcom/amap/api/col/l3/dm;

.field public static final enum h:Lcom/amap/api/col/l3/dm;

.field public static final enum i:Lcom/amap/api/col/l3/dm;

.field public static final enum j:Lcom/amap/api/col/l3/dm;

.field public static final enum k:Lcom/amap/api/col/l3/dm;

.field public static final enum l:Lcom/amap/api/col/l3/dm;

.field private static final synthetic o:[Lcom/amap/api/col/l3/dm;


# instance fields
.field private m:Ljava/lang/String;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/amap/api/col/l3/dm;

    const-string v1, "STYLE_ELEMENT_LABELFILL_OLD"

    const/4 v2, 0x0

    const-string v3, "labels.text.fill"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/amap/api/col/l3/dm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/l3/dm;->a:Lcom/amap/api/col/l3/dm;

    .line 2
    new-instance v1, Lcom/amap/api/col/l3/dm;

    const-string v3, "STYLE_ELEMENT_LABELSTROKE_OLD"

    const/4 v4, 0x1

    const-string v5, "labels.text.stroke"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/amap/api/col/l3/dm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/amap/api/col/l3/dm;->b:Lcom/amap/api/col/l3/dm;

    .line 3
    new-instance v3, Lcom/amap/api/col/l3/dm;

    const-string v5, "STYLE_ELEMENT_GEOMETRYSTROKE_OLD"

    const/4 v6, 0x2

    const-string v7, "geometry.stroke"

    invoke-direct {v3, v5, v6, v7, v6}, Lcom/amap/api/col/l3/dm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/amap/api/col/l3/dm;->c:Lcom/amap/api/col/l3/dm;

    .line 4
    new-instance v5, Lcom/amap/api/col/l3/dm;

    const-string v7, "STYLE_ELEMENT_GEOMETRYFILL_OLD"

    const/4 v8, 0x3

    const-string v9, "geometry.fill"

    invoke-direct {v5, v7, v8, v9, v8}, Lcom/amap/api/col/l3/dm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/amap/api/col/l3/dm;->d:Lcom/amap/api/col/l3/dm;

    .line 5
    new-instance v7, Lcom/amap/api/col/l3/dm;

    const-string v9, "STYLE_ELEMENT_LABELFILL"

    const/4 v10, 0x4

    const-string v11, "textFillColor"

    invoke-direct {v7, v9, v10, v11, v2}, Lcom/amap/api/col/l3/dm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/amap/api/col/l3/dm;->e:Lcom/amap/api/col/l3/dm;

    .line 6
    new-instance v9, Lcom/amap/api/col/l3/dm;

    const-string v11, "STYLE_ELEMENT_LABELSTROKE"

    const/4 v12, 0x5

    const-string v13, "textStrokeColor"

    invoke-direct {v9, v11, v12, v13, v4}, Lcom/amap/api/col/l3/dm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/amap/api/col/l3/dm;->f:Lcom/amap/api/col/l3/dm;

    .line 7
    new-instance v11, Lcom/amap/api/col/l3/dm;

    const-string v13, "STYLE_ELEMENT_GEOMETRYSTROKE"

    const/4 v14, 0x6

    const-string v15, "strokeColor"

    invoke-direct {v11, v13, v14, v15, v6}, Lcom/amap/api/col/l3/dm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/amap/api/col/l3/dm;->g:Lcom/amap/api/col/l3/dm;

    .line 8
    new-instance v13, Lcom/amap/api/col/l3/dm;

    const-string v15, "STYLE_ELEMENT_GEOMETRYFILL"

    const/4 v14, 0x7

    const-string v6, "fillColor"

    invoke-direct {v13, v15, v14, v6, v8}, Lcom/amap/api/col/l3/dm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/amap/api/col/l3/dm;->h:Lcom/amap/api/col/l3/dm;

    .line 9
    new-instance v6, Lcom/amap/api/col/l3/dm;

    const-string v15, "STYLE_ELEMENT_GEOMETRYFILL1"

    const/16 v14, 0x8

    const-string v4, "color"

    invoke-direct {v6, v15, v14, v4, v8}, Lcom/amap/api/col/l3/dm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/amap/api/col/l3/dm;->i:Lcom/amap/api/col/l3/dm;

    .line 10
    new-instance v4, Lcom/amap/api/col/l3/dm;

    const-string v15, "STYLE_ELEMENT_GEOMETRYFILL2"

    const/16 v14, 0x9

    const-string v2, "textureName"

    invoke-direct {v4, v15, v14, v2, v8}, Lcom/amap/api/col/l3/dm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/amap/api/col/l3/dm;->j:Lcom/amap/api/col/l3/dm;

    .line 11
    new-instance v2, Lcom/amap/api/col/l3/dm;

    const-string v15, "STYLE_ELEMENT_BACKGROUNDFILL"

    const/16 v14, 0xa

    const-string v8, "backgroundColor"

    invoke-direct {v2, v15, v14, v8, v10}, Lcom/amap/api/col/l3/dm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/amap/api/col/l3/dm;->k:Lcom/amap/api/col/l3/dm;

    .line 12
    new-instance v8, Lcom/amap/api/col/l3/dm;

    const-string v15, "STYLE_ELEMENT_VISIBLE"

    const/16 v14, 0xb

    const-string v10, "visible"

    invoke-direct {v8, v15, v14, v10, v12}, Lcom/amap/api/col/l3/dm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/amap/api/col/l3/dm;->l:Lcom/amap/api/col/l3/dm;

    const/16 v10, 0xc

    new-array v10, v10, [Lcom/amap/api/col/l3/dm;

    const/4 v15, 0x0

    aput-object v0, v10, v15

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v3, v10, v0

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    aput-object v9, v10, v12

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v6, v10, v0

    const/16 v0, 0x9

    aput-object v4, v10, v0

    const/16 v0, 0xa

    aput-object v2, v10, v0

    aput-object v8, v10, v14

    .line 13
    sput-object v10, Lcom/amap/api/col/l3/dm;->o:[Lcom/amap/api/col/l3/dm;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/amap/api/col/l3/dm;->m:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcom/amap/api/col/l3/dm;->n:I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/dm;->values()[Lcom/amap/api/col/l3/dm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/amap/api/col/l3/dm;->m:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    iget p0, v3, Lcom/amap/api/col/l3/dm;->n:I

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/col/l3/dm;
    .locals 1

    .line 1
    const-class v0, Lcom/amap/api/col/l3/dm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/col/l3/dm;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/col/l3/dm;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/col/l3/dm;->o:[Lcom/amap/api/col/l3/dm;

    invoke-virtual {v0}, [Lcom/amap/api/col/l3/dm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/col/l3/dm;

    return-object v0
.end method
