.class public Lcom/ifengyu/talk/e/b;
.super Ljava/lang/Object;
.source "TempMemberComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ifengyu/talk/http/entity/TempMember;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/talk/e/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/talk/http/entity/TempMember;Lcom/ifengyu/talk/http/entity/TempMember;)I
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempMember;->getAccount()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/talk/e/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/TempMember;->getAccount()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/talk/e/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempMember;->getJoinTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/TempMember;->getJoinTime()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/talk/http/entity/TempMember;

    check-cast p2, Lcom/ifengyu/talk/http/entity/TempMember;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/talk/e/b;->a(Lcom/ifengyu/talk/http/entity/TempMember;Lcom/ifengyu/talk/http/entity/TempMember;)I

    move-result p1

    return p1
.end method
