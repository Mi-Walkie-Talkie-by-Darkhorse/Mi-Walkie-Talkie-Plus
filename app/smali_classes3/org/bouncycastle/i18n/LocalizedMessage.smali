.class public Lorg/bouncycastle/i18n/LocalizedMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;
    }
.end annotation


# static fields
.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field protected arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

.field protected encoding:Ljava/lang/String;

.field protected extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

.field protected filter:Lorg/bouncycastle/i18n/filter/Filter;

.field protected final id:Ljava/lang/String;

.field protected loader:Ljava/lang/ClassLoader;

.field protected final resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {v0, p0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/bouncycastle/i18n/LocalizedMessage;)V

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {v0, p0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/bouncycastle/i18n/LocalizedMessage;)V

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p3, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {v0, p0, p4}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/bouncycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p3, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {v0, p0, p3}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/bouncycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    return-void
.end method


# virtual methods
.method protected addExtraArgs(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0, p2}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getFilteredArgs(Ljava/util/Locale;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected formatWithTimeZone(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/text/MessageFormat;

    const-string v0, " "

    invoke-direct {v2, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {v2, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/text/MessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    aget-object v0, v3, v1

    instance-of v0, v0, Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    aget-object v0, v3, v1

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v1, v0}, Ljava/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArguments()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/i18n/MissingEntryException;
        }
    .end annotation

    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v1, p2}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getFilteredArgs(Ljava/util/Locale;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/bouncycastle/i18n/LocalizedMessage;->formatWithTimeZone(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/i18n/LocalizedMessage;->addExtraArgs(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, p2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/bouncycastle/i18n/MissingEntryException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in resource file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    iget-object v4, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    :goto_2
    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/i18n/MissingEntryException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/i18n/LocalizedMessage;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public getExtraArgs()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilter()Lorg/bouncycastle/i18n/filter/Filter;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setExtraArgument(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/i18n/LocalizedMessage;->setExtraArguments([Ljava/lang/Object;)V

    return-void
.end method

.method public setExtraArguments([Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/bouncycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    goto :goto_0
.end method

.method public setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Resource: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" Id: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " Arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v2}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " normal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v2}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " extra"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, " Encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ClassLoader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
