.class public final enum Lcom/github/mikephil/charting/data/DataSet$Rounding;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/data/DataSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rounding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/data/DataSet$Rounding;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/github/mikephil/charting/data/DataSet$Rounding;

.field public static final enum b:Lcom/github/mikephil/charting/data/DataSet$Rounding;

.field public static final enum c:Lcom/github/mikephil/charting/data/DataSet$Rounding;

.field private static final synthetic d:[Lcom/github/mikephil/charting/data/DataSet$Rounding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;

    const/4 v1, 0x0

    const-string v2, "UP"

    invoke-direct {v0, v2, v1}, Lcom/github/mikephil/charting/data/DataSet$Rounding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->a:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    new-instance v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;

    const/4 v2, 0x1

    const-string v3, "DOWN"

    invoke-direct {v0, v3, v2}, Lcom/github/mikephil/charting/data/DataSet$Rounding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->b:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    new-instance v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;

    const/4 v3, 0x2

    const-string v4, "CLOSEST"

    invoke-direct {v0, v4, v3}, Lcom/github/mikephil/charting/data/DataSet$Rounding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->c:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/github/mikephil/charting/data/DataSet$Rounding;

    sget-object v5, Lcom/github/mikephil/charting/data/DataSet$Rounding;->a:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    aput-object v5, v4, v1

    sget-object v1, Lcom/github/mikephil/charting/data/DataSet$Rounding;->b:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/github/mikephil/charting/data/DataSet$Rounding;->d:[Lcom/github/mikephil/charting/data/DataSet$Rounding;

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

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/data/DataSet$Rounding;
    .locals 1

    const-class v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/DataSet$Rounding;

    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/data/DataSet$Rounding;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->d:[Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/data/DataSet$Rounding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/data/DataSet$Rounding;

    return-object v0
.end method
