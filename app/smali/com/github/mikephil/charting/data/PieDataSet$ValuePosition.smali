.class public final enum Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
.super Ljava/lang/Enum;
.source "PieDataSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/data/PieDataSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValuePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

.field public static final enum b:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

.field private static final synthetic c:[Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    const-string v1, "INSIDE_SLICE"

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->a:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    new-instance v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    const-string v1, "OUTSIDE_SLICE"

    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->b:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    sget-object v1, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->a:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->b:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->c:[Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .locals 1

    const-class v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    return-object v0
.end method

.method public static values()[Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->c:[Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    return-object v0
.end method
