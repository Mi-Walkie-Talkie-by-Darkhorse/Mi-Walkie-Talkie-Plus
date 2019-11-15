.class public Lorg/bouncycastle/asn1/x500/style/RFC4519Style;
.super Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;


# static fields
.field private static final DefaultLookUp:Ljava/util/Hashtable;

.field private static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

.field public static final businessCategory:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final c:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final description:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final destinationIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final distinguishedName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dnQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final enhancedSearchGuide:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final facsimileTelephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final generationQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final givenName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final houseIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final initials:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final internationalISDNNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final l:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final member:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final o:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ou:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final owner:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final physicalDeliveryOfficeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final postOfficeBox:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final postalAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final postalCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final preferredDeliveryMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final registeredAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final roleOccupant:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final searchGuide:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final seeAlso:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final serialNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final st:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final street:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final telephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final teletexTerminalIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final telexNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final title:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final uid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final uniqueMember:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final userPassword:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final x121Address:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final x500UniqueIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field protected final defaultLookUp:Ljava/util/Hashtable;

.field protected final defaultSymbols:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.15"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.13"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.27"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.49"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.46"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.47"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.23"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.51"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.25"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.31"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.41"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.32"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.19"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.16"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.17"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.18"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.28"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.26"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.33"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.14"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.34"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.9"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.20"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.22"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.21"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.50"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.35"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.24"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "businessCategory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "cn"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "dc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "destinationIndicator"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "distinguishedName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "dnQualifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "enhancedSearchGuide"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "facsimileTelephoneNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "generationQualifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "givenName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "houseIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "initials"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "internationalISDNNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "member"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "o"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "ou"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "owner"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "physicalDeliveryOfficeName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "postalAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "postalCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "postOfficeBox"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "preferredDeliveryMethod"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "registeredAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "roleOccupant"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "searchGuide"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "seeAlso"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "serialNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "sn"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "street"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "telephoneNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "teletexTerminalIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "telexNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "uniqueMember"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "userPassword"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "x121Address"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "x500UniqueIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "businesscategory"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "c"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "cn"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dc"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "description"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "destinationindicator"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "distinguishedname"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dnqualifier"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "enhancedsearchguide"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "facsimiletelephonenumber"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "generationqualifier"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "givenname"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "houseidentifier"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "initials"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "internationalisdnnumber"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "l"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "member"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "name"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "o"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "ou"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "owner"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "physicaldeliveryofficename"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "postaladdress"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "postalcode"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "postofficebox"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "preferreddeliverymethod"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "registeredaddress"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "roleoccupant"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "searchguide"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "seealso"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "serialnumber"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "sn"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "st"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "street"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "telephonenumber"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "teletexterminalidentifier"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "telexnumber"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "title"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "uid"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "uniquemember"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "userpassword"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "x121address"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "x500uniqueidentifier"

    sget-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public attrNameToOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method protected encodeStringValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    goto :goto_0
.end method

.method public fromString(Ljava/lang/String;)[Lorg/bouncycastle/asn1/x500/RDN;
    .locals 5

    invoke-static {p1, p0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->rDNsFromString(Ljava/lang/String;Lorg/bouncycastle/asn1/x500/X500NameStyle;)[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Lorg/bouncycastle/asn1/x500/RDN;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_0

    array-length v3, v2

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v4, v1, v0

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public oidToAttrNames(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->findAttrNamesForOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oidToDisplayName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString(Lorg/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;
    .locals 7

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v3

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_0
    if-ltz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    aget-object v4, v3, v1

    iget-object v5, p0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    invoke-static {v2, v4, v5}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->appendRDN(Ljava/lang/StringBuffer;Lorg/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
