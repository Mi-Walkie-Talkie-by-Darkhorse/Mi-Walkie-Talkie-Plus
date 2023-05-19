.class final Lcom/huawei/hms/scankit/p/tc$b;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/tc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/huawei/hms/scankit/p/rc;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/scankit/p/sc;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/tc$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result p1

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/huawei/hms/scankit/p/rc;

    check-cast p2, Lcom/huawei/hms/scankit/p/rc;

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/scankit/p/tc$b;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)I

    move-result p1

    return p1
.end method
