.class public final enum Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
.super Ljava/lang/Enum;
.source "YAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/YAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "YAxisLabelPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

.field public static final enum b:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

.field private static final synthetic c:[Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    const-string v1, "OUTSIDE_CHART"

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    new-instance v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    const-string v1, "INSIDE_CHART"

    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->b:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->b:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->c:[Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    .locals 1

    const-class v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    return-object v0
.end method

.method public static values()[Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->c:[Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    return-object v0
.end method
