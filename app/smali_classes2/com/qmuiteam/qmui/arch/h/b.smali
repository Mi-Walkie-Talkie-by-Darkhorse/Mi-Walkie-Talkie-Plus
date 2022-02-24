.class public Lcom/qmuiteam/qmui/arch/h/b;
.super Ljava/lang/Object;
.source "FirstFragmentFinders.java"


# static fields
.field private static b:Lcom/qmuiteam/qmui/arch/h/b; = null

.field private static c:Z = false

.field private static final d:Lcom/qmuiteam/qmui/arch/h/a;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/qmuiteam/qmui/arch/h/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/arch/h/b$a;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/arch/h/b$a;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/arch/h/b;->d:Lcom/qmuiteam/qmui/arch/h/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/h/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/qmuiteam/qmui/arch/h/b;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/arch/h/b;->b:Lcom/qmuiteam/qmui/arch/h/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/arch/h/b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/arch/h/b;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/arch/h/b;->b:Lcom/qmuiteam/qmui/arch/h/b;

    .line 3
    :cond_0
    sget-object v0, Lcom/qmuiteam/qmui/arch/h/b;->b:Lcom/qmuiteam/qmui/arch/h/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/qmuiteam/qmui/arch/h/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;",
            ">;)",
            "Lcom/qmuiteam/qmui/arch/h/a;"
        }
    .end annotation

    const-string v0, "FirstFragmentFinders"

    .line 4
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/h/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/arch/h/a;

    if-eqz v1, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 7
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_FragmentFinder"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 8
    const-class v3, Lcom/qmuiteam/qmui/arch/h/a;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/arch/h/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 10
    sget-boolean v3, Lcom/qmuiteam/qmui/arch/h/b;->c:Z

    if-eqz v3, :cond_3

    const-string v3, "Instantiation exception."

    .line 11
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 13
    sget-boolean v3, Lcom/qmuiteam/qmui/arch/h/b;->c:Z

    if-eqz v3, :cond_3

    const-string v3, "Access exception."

    .line 14
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    nop

    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 17
    const-class v3, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    sget-boolean v1, Lcom/qmuiteam/qmui/arch/h/b;->c:Z

    if-eqz v1, :cond_2

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found. Trying superclass"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_2
    invoke-virtual {p0, v2}, Lcom/qmuiteam/qmui/arch/h/b;->a(Ljava/lang/Class;)Lcom/qmuiteam/qmui/arch/h/a;

    move-result-object v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 21
    sget-object v1, Lcom/qmuiteam/qmui/arch/h/b;->d:Lcom/qmuiteam/qmui/arch/h/a;

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/h/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
