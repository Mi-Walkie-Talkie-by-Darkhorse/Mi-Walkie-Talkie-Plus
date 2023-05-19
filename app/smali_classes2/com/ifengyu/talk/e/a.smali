.class public Lcom/ifengyu/talk/e/a;
.super Ljava/lang/Object;
.source "MemberComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/shanlitech/et/model/Member;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ifengyu/talk/e/a;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcom/shanlitech/et/model/Member;Lcom/shanlitech/et/model/Member;)I
    .locals 5

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ifengyu/talk/e/a;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ifengyu/talk/e/a;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getInGroupTimeSecond()I

    move-result v0

    invoke-virtual {p2}, Lcom/shanlitech/et/model/Member;->getInGroupTimeSecond()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getInGroupTimeSecond()I

    move-result p1

    invoke-virtual {p2}, Lcom/shanlitech/et/model/Member;->getInGroupTimeSecond()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/shanlitech/et/model/Member;

    check-cast p2, Lcom/shanlitech/et/model/Member;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/talk/e/a;->a(Lcom/shanlitech/et/model/Member;Lcom/shanlitech/et/model/Member;)I

    move-result p1

    return p1
.end method
