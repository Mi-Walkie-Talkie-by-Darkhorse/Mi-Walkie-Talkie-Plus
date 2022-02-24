.class interface abstract Lcom/squareup/otto/f;
.super Ljava/lang/Object;
.source "HandlerFinder.java"


# static fields
.field public static final a:Lcom/squareup/otto/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/squareup/otto/f$a;

    invoke-direct {v0}, Lcom/squareup/otto/f$a;-><init>()V

    sput-object v0, Lcom/squareup/otto/f;->a:Lcom/squareup/otto/f;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/squareup/otto/e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findAllSubscribers(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Lcom/squareup/otto/d;",
            ">;>;"
        }
    .end annotation
.end method
