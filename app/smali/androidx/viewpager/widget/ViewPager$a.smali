.class final Landroidx/viewpager/widget/ViewPager$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/viewpager/widget/ViewPager$e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/viewpager/widget/ViewPager$e;Landroidx/viewpager/widget/ViewPager$e;)I
    .locals 0

    iget p1, p1, Landroidx/viewpager/widget/ViewPager$e;->b:I

    iget p2, p2, Landroidx/viewpager/widget/ViewPager$e;->b:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/viewpager/widget/ViewPager$e;

    check-cast p2, Landroidx/viewpager/widget/ViewPager$e;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$a;->a(Landroidx/viewpager/widget/ViewPager$e;Landroidx/viewpager/widget/ViewPager$e;)I

    move-result p1

    return p1
.end method
