.class public Lcom/amap/api/mapcore/util/fe;
.super Landroid/view/ContextThemeWrapper;
.source "PluginContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/fe$a;
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/lang/ClassLoader;

.field private e:Lcom/amap/api/mapcore/util/fe$a;

.field private f:Landroid/view/LayoutInflater$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.widget"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.webkit"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.app"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/mapcore/util/fe;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/amap/api/mapcore/util/fe$a;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/fe$a;-><init>(Lcom/amap/api/mapcore/util/fe;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fe;->e:Lcom/amap/api/mapcore/util/fe$a;

    new-instance v0, Lcom/amap/api/mapcore/util/fe$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/fe$1;-><init>(Lcom/amap/api/mapcore/util/fe;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fe;->f:Landroid/view/LayoutInflater$Factory;

    invoke-static {}, Lcom/amap/api/mapcore/util/ff;->a()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fe;->a:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/fe;->c:Ljava/lang/ClassLoader;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/fe;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/fe;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fe;->e:Lcom/amap/api/mapcore/util/fe$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/fe$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fe;->e:Lcom/amap/api/mapcore/util/fe$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/fe$a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_6

    :try_start_0
    const-string v2, "api.navi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fe;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    move v10, v3

    move-object v3, v2

    move v2, v10

    :goto_2
    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fe;->e:Lcom/amap/api/mapcore/util/fe$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/fe$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v5, Lcom/amap/api/mapcore/util/fe;->d:[Ljava/lang/String;

    array-length v6, v5

    move v2, v3

    :goto_3
    if-ge v2, v6, :cond_7

    aget-object v7, v5, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v8, p0, Lcom/amap/api/mapcore/util/fe;->c:Ljava/lang/ClassLoader;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    :try_start_3
    const-class v5, Landroid/view/ViewStub;

    if-ne v2, v5, :cond_3

    move v10, v3

    move-object v3, v2

    move v2, v10

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/amap/api/mapcore/util/fe;->c:Ljava/lang/ClassLoader;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    if-eq v5, v6, :cond_4

    move v10, v3

    move-object v3, v2

    move v2, v10

    goto :goto_2

    :cond_4
    move-object v3, v2

    move v2, v4

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v2, v1

    :goto_4
    move v10, v3

    move-object v3, v2

    move v2, v10

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    :try_start_4
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Landroid/util/AttributeSet;

    aput-object v5, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fe;->e:Lcom/amap/api/mapcore/util/fe$a;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/fe$a;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_5
    const/4 v2, 0x2

    :try_start_5
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto :goto_5

    :catch_4
    move-exception v4

    goto :goto_4

    :cond_7
    move-object v2, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fe;->a:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fe;->a:Landroid/content/res/Resources;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fe;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fe;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fe;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fe;->f:Landroid/view/LayoutInflater$Factory;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fe;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fe;->b:Landroid/view/LayoutInflater;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fe;->b:Landroid/view/LayoutInflater;

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
