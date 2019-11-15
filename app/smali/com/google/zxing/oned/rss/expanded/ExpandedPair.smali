.class final Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
.super Ljava/lang/Object;
.source "ExpandedPair.java"


# instance fields
.field private final finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

.field private final leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

.field private final mayBeLast:Z

.field private final rightChar:Lcom/google/zxing/oned/rss/DataCharacter;


# direct methods
.method constructor <init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    iput-object p3, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    iput-boolean p4, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast:Z

    return-void
.end method

.method private static equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static hashNotNull(Ljava/lang/Object;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    iget-object v2, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-static {v1, v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    iget-object v2, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-static {v1, v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    iget-object v2, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    invoke-static {v1, v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    return-object v0
.end method

.method getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    return-object v0
.end method

.method getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->hashNotNull(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->hashNotNull(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->hashNotNull(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method mayBeLast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast:Z

    return v0
.end method

.method public mustBeLast()Z
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
