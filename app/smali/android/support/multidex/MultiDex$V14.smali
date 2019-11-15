.class final Landroid/support/multidex/MultiDex$V14;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V14"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/multidex/MultiDex$V14$JBMR2ElementConstructor;,
        Landroid/support/multidex/MultiDex$V14$JBMR11ElementConstructor;,
        Landroid/support/multidex/MultiDex$V14$ICSElementConstructor;,
        Landroid/support/multidex/MultiDex$V14$ElementConstructor;
    }
.end annotation


# static fields
.field private static final EXTRACTED_SUFFIX_LENGTH:I


# instance fields
.field private final elementConstructor:Landroid/support/multidex/MultiDex$V14$ElementConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".zip"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/support/multidex/MultiDex$V14;->EXTRACTED_SUFFIX_LENGTH:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dalvik.system.DexPathList$Element"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    new-instance v0, Landroid/support/multidex/MultiDex$V14$ICSElementConstructor;

    invoke-direct {v0, v1}, Landroid/support/multidex/MultiDex$V14$ICSElementConstructor;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v0, p0, Landroid/support/multidex/MultiDex$V14;->elementConstructor:Landroid/support/multidex/MultiDex$V14$ElementConstructor;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Landroid/support/multidex/MultiDex$V14$JBMR11ElementConstructor;

    invoke-direct {v0, v1}, Landroid/support/multidex/MultiDex$V14$JBMR11ElementConstructor;-><init>(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Landroid/support/multidex/MultiDex$V14$JBMR2ElementConstructor;

    invoke-direct {v0, v1}, Landroid/support/multidex/MultiDex$V14$JBMR2ElementConstructor;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method static install(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const-string v0, "pathList"

    invoke-static {p0, v0}, Landroid/support/multidex/MultiDex;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v0, Landroid/support/multidex/MultiDex$V14;

    invoke-direct {v0}, Landroid/support/multidex/MultiDex$V14;-><init>()V

    invoke-direct {v0, p1}, Landroid/support/multidex/MultiDex$V14;->makeDexElements(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    const-string v0, "dexElements"

    invoke-static {v1, v0, v2}, Landroid/support/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "MultiDex"

    const-string v4, "Failed find field \'dexElements\' attempting \'pathElements\'"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "pathElements"

    invoke-static {v1, v0, v2}, Landroid/support/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private makeDexElements(Ljava/util/List;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Object;

    move v1, v2

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v4, p0, Landroid/support/multidex/MultiDex$V14;->elementConstructor:Landroid/support/multidex/MultiDex$V14$ElementConstructor;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Landroid/support/multidex/MultiDex$V14;->optimizedPathFor(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Landroid/support/multidex/MultiDex$V14$ElementConstructor;->newInstance(Ljava/io/File;Ldalvik/system/DexFile;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private static optimizedPathFor(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Landroid/support/multidex/MultiDex$V14;->EXTRACTED_SUFFIX_LENGTH:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
