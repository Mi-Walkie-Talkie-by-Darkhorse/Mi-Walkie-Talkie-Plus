.class public final enum Lcom/github/mikephil/charting/components/Legend$LegendForm;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegendForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/components/Legend$LegendForm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum b:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum c:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum d:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum e:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum f:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private static final synthetic g:[Lcom/github/mikephil/charting/components/Legend$LegendForm;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->a:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/4 v2, 0x1

    const-string v3, "EMPTY"

    invoke-direct {v0, v3, v2}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->b:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/4 v3, 0x2

    const-string v4, "DEFAULT"

    invoke-direct {v0, v4, v3}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->c:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/4 v4, 0x3

    const-string v5, "SQUARE"

    invoke-direct {v0, v5, v4}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->d:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/4 v5, 0x4

    const-string v6, "CIRCLE"

    invoke-direct {v0, v6, v5}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->e:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/4 v6, 0x5

    const-string v7, "LINE"

    invoke-direct {v0, v7, v6}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->f:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendForm;->a:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    aput-object v8, v7, v1

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->b:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    aput-object v1, v7, v2

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->c:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    aput-object v1, v7, v3

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->d:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    aput-object v1, v7, v4

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->e:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/github/mikephil/charting/components/Legend$LegendForm;->g:[Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    const-class v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->g:[Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/components/Legend$LegendForm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method
