.class public Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/i18n/LocalizedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FilteredArguments"
.end annotation


# static fields
.field protected static final FILTER:I = 0x1

.field protected static final FILTER_URL:I = 0x2

.field protected static final NO_FILTER:I


# instance fields
.field protected argFilterType:[I

.field protected arguments:[Ljava/lang/Object;

.field protected filter:Lorg/bouncycastle/i18n/filter/Filter;

.field protected filteredArgs:[Ljava/lang/Object;

.field protected isLocaleSpecific:[Z

.field final synthetic this$0:Lorg/bouncycastle/i18n/LocalizedMessage;

.field protected unpackedArgs:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/bouncycastle/i18n/LocalizedMessage;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/bouncycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->this$0:Lorg/bouncycastle/i18n/LocalizedMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->arguments:[Ljava/lang/Object;

    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->isLocaleSpecific:[Z

    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    move v1, v2

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_3

    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/bouncycastle/i18n/filter/TrustedInput;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v0, p2, v1

    check-cast v0, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v0}, Lorg/bouncycastle/i18n/filter/TrustedInput;->getInput()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aput v2, v0, v1

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->isLocaleSpecific:[Z

    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v3, v3, v1

    instance-of v3, v3, Lorg/bouncycastle/i18n/LocaleString;

    aput-boolean v3, v0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v0, p2, v1

    check-cast v0, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v0}, Lorg/bouncycastle/i18n/filter/UntrustedInput;->getInput()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v1

    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    const/4 v3, 0x2

    aput v3, v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aput v4, v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v3, p2, v1

    aput-object v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aput v4, v0, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private filter(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string p2, "null"

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p2, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return-object p2

    :pswitch_1
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/i18n/filter/Filter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/i18n/filter/Filter;->doFilterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getArguments()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->arguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getFilter()Lorg/bouncycastle/i18n/filter/Filter;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    return-object v0
.end method

.method public getFilteredArgs(Ljava/util/Locale;)[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    aget-object v0, v0, v1

    :goto_1
    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->isLocaleSpecific:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    check-cast v0, Lorg/bouncycastle/i18n/LocaleString;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/i18n/LocaleString;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aget v3, v3, v1

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aget v3, v3, v1

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    aput-object v0, v3, v1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    return-void
.end method
