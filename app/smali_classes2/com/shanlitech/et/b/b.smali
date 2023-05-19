.class public final Lcom/shanlitech/et/b/b;
.super Ljava/lang/Object;
.source "PocSDKRunner.java"


# static fields
.field private static volatile a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/shanlitech/et/model/Group;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/shanlitech/et/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/shanlitech/et/model/Member;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/shanlitech/et/model/Group;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shanlitech/et/b/b;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public static b()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/shanlitech/et/model/Member;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shanlitech/et/b/b;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method public static c()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/shanlitech/et/model/User;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shanlitech/et/b/b;->b:Ljava/util/Comparator;

    return-object v0
.end method

.method public static d(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/shanlitech/et/model/Group;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/shanlitech/et/b/b;->a:Ljava/util/Comparator;

    return-void
.end method

.method public static e(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/shanlitech/et/model/Member;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/shanlitech/et/b/b;->c:Ljava/util/Comparator;

    return-void
.end method

.method public static f(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/shanlitech/et/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/shanlitech/et/b/b;->b:Ljava/util/Comparator;

    return-void
.end method
