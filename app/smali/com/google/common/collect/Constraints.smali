.class final Lcom/google/common/collect/Constraints;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Constraints$ConstrainedListIterator;,
        Lcom/google/common/collect/Constraints$ConstrainedRandomAccessList;,
        Lcom/google/common/collect/Constraints$ConstrainedList;,
        Lcom/google/common/collect/Constraints$ConstrainedSortedSet;,
        Lcom/google/common/collect/Constraints$ConstrainedSet;,
        Lcom/google/common/collect/Constraints$ConstrainedCollection;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->checkElements(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)Ljava/util/ListIterator;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->constrainedListIterator(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method private static checkElements(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/google/common/collect/Constraint<",
            "-TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static constrainedCollection(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/google/common/collect/Constraint<",
            "-TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedCollection;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedCollection;-><init>(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method public static constrainedList(Ljava/util/List;Lcom/google/common/collect/Constraint;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lcom/google/common/collect/Constraint<",
            "-TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedRandomAccessList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedRandomAccessList;-><init>(Ljava/util/List;Lcom/google/common/collect/Constraint;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedList;-><init>(Ljava/util/List;Lcom/google/common/collect/Constraint;)V

    :goto_0
    return-object v0
.end method

.method private static constrainedListIterator(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator<",
            "TE;>;",
            "Lcom/google/common/collect/Constraint<",
            "-TE;>;)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedListIterator;-><init>(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method public static constrainedSet(Ljava/util/Set;Lcom/google/common/collect/Constraint;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lcom/google/common/collect/Constraint<",
            "-TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedSet;-><init>(Ljava/util/Set;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method public static constrainedSortedSet(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lcom/google/common/collect/Constraint<",
            "-TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;-><init>(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method static constrainedTypePreservingCollection(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/google/common/collect/Constraint<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->constrainedSortedSet(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->constrainedSet(Ljava/util/Set;Lcom/google/common/collect/Constraint;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->constrainedList(Ljava/util/List;Lcom/google/common/collect/Constraint;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->constrainedCollection(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
