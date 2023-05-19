.class public final Lcom/wang/avi/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wang/avi/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AVLoadingIndicatorView:[I

.field public static final AVLoadingIndicatorView_indicatorColor:I = 0x0

.field public static final AVLoadingIndicatorView_indicatorName:I = 0x1

.field public static final AVLoadingIndicatorView_maxHeight:I = 0x2

.field public static final AVLoadingIndicatorView_maxWidth:I = 0x3

.field public static final AVLoadingIndicatorView_minHeight:I = 0x4

.field public static final AVLoadingIndicatorView_minWidth:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0401f1
        0x7f0401f5
        0x7f04029d
        0x7f0402a1
        0x7f0402a5
        0x7f0402a9
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
