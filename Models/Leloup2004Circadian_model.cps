<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.34.251 (CoRC) (http://www.copasi.org) at 2022-05-02T13:19:18Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="34" versionDevel="251" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="Rate Law for Translation of mRNA to protein_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ksC*MC_0
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1275" name="MC_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1274" name="ksC" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="Henri-Michaelis-Menten (irreversible)_11" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_108">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V3B*BN_0/(Kp+BN_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1278" name="BN_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1277" name="Kp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1276" name="V3B" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_109" name="Henri-Michaelis-Menten (irreversible)_12" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V4B*BNP_0/(Kdp+BNP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1281" name="BNP_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1280" name="Kdp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1279" name="V4B" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_110" name="Henri-Michaelis-Menten (irreversible)_14" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_110">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vmC*MC_0/(KmC+MC_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1284" name="KmC" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1283" name="MC_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1282" name="vmC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_111" name="Henri-Michaelis-Menten (irreversible)_15" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_111">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdCC*CCP_0/(Kd+CCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1287" name="CCP_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1286" name="Kd" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1285" name="vdCC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_112" name="Henri-Michaelis-Menten (irreversible)_18" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_112">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vmP*MP_0/(KmP+MP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1290" name="KmP" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1289" name="MP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1288" name="vmP" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_113" name="Henri-Michaelis-Menten (irreversible)_20" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vmB*MB_0/(KmB+MB_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1293" name="KmB" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1292" name="MB_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1291" name="vmB" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_114" name="Henri-Michaelis-Menten (irreversible)_17" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_114">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdPCN*PCNP_0/(Kd+PCNP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1296" name="Kd" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1295" name="PCNP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1294" name="vdPCN" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_115" name="Henri-Michaelis-Menten (irreversible)_7" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_115">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V1P*PC_0/(Kp+PC_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1299" name="Kp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1298" name="PC_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1297" name="V1P" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_116" name="Henri-Michaelis-Menten (irreversible)_21" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_116">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdBC*BCP_0/(Kd+BCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1302" name="BCP_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1301" name="Kd" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1300" name="vdBC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_117" name="Henri-Michaelis-Menten (irreversible)_22" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdBN*BNP_0/(Kd+BNP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1305" name="BNP_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1304" name="Kd" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1303" name="vdBN" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_118" name="Henri-Michaelis-Menten (irreversible)_19" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_118">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdPC*PCP_0/(Kd+PCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1308" name="Kd" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1307" name="PCP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1306" name="vdPC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_119" name="Henri-Michaelis-Menten (irreversible)_13" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_119">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdIN*IN_0/(Kd+IN_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1311" name="IN_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1310" name="Kd" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1309" name="vdIN" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_120" name="Henri-Michaelis-Menten (irreversible)_8" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_120">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V2P*PCP_0/(Kdp+PCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1314" name="Kdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1313" name="PCP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1312" name="V2P" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_121" name="Henri-Michaelis-Menten (irreversible)_10" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_121">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V2B*BCP_0/(Kdp+BCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1317" name="BCP_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1316" name="Kdp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1315" name="V2B" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_122" name="Henri-Michaelis-Menten (irreversible)_16" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_122">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdPCC*PCCP_0/(Kd+PCCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1320" name="Kd" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1319" name="PCCP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1318" name="vdPCC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_123" name="Henri-Michaelis-Menten (irreversible)_5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_123">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V1C*CC_0/(Kp+CC_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1323" name="CC_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1322" name="Kp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1321" name="V1C" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_124" name="Rate Law for Translation of mRNA to protein_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_124">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ksP*MP_0
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1325" name="MP_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1324" name="ksP" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_125" name="Henri-Michaelis-Menten (irreversible)_6" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_125">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V2C*CCP_0/(Kdp+CCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1328" name="CCP_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1327" name="Kdp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1326" name="V2C" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_126" name="Hill (Copy)_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_126">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vsP*BN_0^n/(KAP^n+BN_0^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1332" name="BN_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1331" name="KAP" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1330" name="n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1329" name="vsP" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_127" name="Hill (Copy)_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_127">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vsC*BN_0^n/(KAC^n+BN_0^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1336" name="BN_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1335" name="KAC" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1334" name="n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1333" name="vsC" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_128" name="Henri-Michaelis-Menten (irreversible)_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_128">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V3PC*PCN_0/(Kp+PCN_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1339" name="Kp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1338" name="PCN_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1337" name="V3PC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_129" name="Henri-Michaelis-Menten (irreversible)_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_129">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V4PC*PCNP_0/(Kdp+PCNP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1342" name="Kdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1341" name="PCNP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1340" name="V4PC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_130" name="Henri-Michaelis-Menten (irreversible)_4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_130">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V2PC*PCCP_0/(Kdp+PCCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1345" name="Kdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1344" name="PCCP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1343" name="V2PC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_131" name="Henri-Michaelis-Menten (irreversible)_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_131">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V1PC*PCC_0/(Kp+PCC_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1348" name="Kp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1347" name="PCC_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1346" name="V1PC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_132" name="Rate Law for Translation of mRNA to protein_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_132">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ksB*MB_0
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1350" name="MB_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1349" name="ksB" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_133" name="Hill (copy, 1)_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_133">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vsB*KIB^m/(KIB^m+BN_0^m)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1354" name="BN_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1353" name="KIB" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1352" name="m" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1351" name="vsB" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_134" name="Henri-Michaelis-Menten (irreversible)_9" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_134">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V1B*BC_0/(Kp+BC_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1357" name="BC_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1356" name="Kp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1355" name="V1B" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_6" name="Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod" simulationType="time" timeUnit="h" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_6">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000083"/>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL0478895291"/>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043153"/>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000078"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000074"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000073"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <bqmodel:isDescribedBy rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000083"/>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <bqmodel:isDescribedBy rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000078"/>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <bqmodel:isDescribedBy rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000074"/>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <bqmodel:isDescribedBy rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000073"/>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/15363675"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-05-02T13:18:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000975"/>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL0478895291"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL0478895291"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043153"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <p>We extend the study of a computational model recently proposed for the mammalian circadian clock (Proc. Natl Acad. Sci. USA 100 (2003) 7051). The model, based on the intertwined positive and negative regulatory loops involving the Per, Cry, Bmal1, and Clock genes, can give rise to sustained circadian oscillations in conditions of continuous darkness. These limit cycle oscillations correspond to circadian rhythms autonomously generated by suprachiasmatic nuclei and by some peripheral tissues. By using different sets of parameter values producing circadian oscillations, we compare the effect of the various parameters and show that both the occurrence and the period of the oscillations are generally most sensitive to parameters related to synthesis or degradation of Bmal1 mRNA and BMAL1 protein. The mechanism of circadian oscillations relies on the formation of an inactive complex between PER and CRY and the activators CLOCK and BMAL1 that enhance Per and Cry expression. Bifurcation diagrams and computer simulations nevertheless indicate the possible existence of a second source of oscillatory behavior. Thus, sustained oscillations might arise from the sole negative autoregulation of Bmal1 expression. This second oscillatory mechanism may not be functional in physiological conditions, and its period need not necessarily be circadian. When incorporating the light-induced expression of the Per gene, the model accounts for entrainment of the oscillations by light-dark (LD) cycles. Long-term suppression of circadian oscillations by a single light pulse can occur in the model when a stable steady state coexists with a stable limit cycle. The phase of the oscillations upon entrainment in LD critically depends on the parameters that govern the level of CRY protein. Small changes in the parameters governing CRY levels can shift the peak in Per mRNA from the L to the D phase, or can prevent entrainment. The results are discussed in relation to physiological disorders of the sleep-wake cycle linked to perturbations of the human circadian clock, such as the familial advanced sleep phase syndrome or the non-24h sleep-wake syndrome.</p>
  </body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_3" name="Mammalian Cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/15363675"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C12958"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>This compartment describes Circadian Rhythms occuring at 24.2 hours.</pre>
  </body>

        </Comment>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_75" name="MP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_75">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/---"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000317276"/>
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_76" name="MC" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_76">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000008527"/>
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="MB" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_77">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000403290"/>
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_78" name="PC" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_78">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="CC" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_79">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_80" name="PCP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_80">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="CCP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_81">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_82" name="PCC" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_82">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="PCN" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_83">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_84" name="PCNP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_84">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="PCCP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_85">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_86" name="BC" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_86">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="BCP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_87">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_88" name="BN" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_88">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="BNP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_89">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_90" name="IN" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_90">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990513"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="BTot" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_91">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25697"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_92" name="CTot" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_92">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25697"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="PTot" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_93">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25697"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_159" name="MP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_159">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000317276"/>
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsP],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KAP],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmP],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmP],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmp],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_160" name="vsP" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_160">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1.5*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vstot],Reference=Value>
        </Expression>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_161" name="vmP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_161">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_162" name="kdmp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_162">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_163" name="KAP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_163">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000363"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_164" name="KmP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_164">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_165" name="MC" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_165">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000008527"/>
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KAC],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MC],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmc],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MC],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_166" name="vsC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_166">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1.1000000000000001*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vstot],Reference=Value>
        </Expression>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_167" name="vmC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_167">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_168" name="kdmc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_168">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_169" name="KAC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_169">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000363"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_170" name="KmC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_170">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_171" name="MB" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_171">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000403290"/>
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsB],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KIB],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[m],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KIB],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[m],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[m],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmB],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MB],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmB],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MB],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmb],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MB],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_172" name="vsB" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_172">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vstot],Reference=Value>
        </Expression>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_173" name="vmB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_173">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_174" name="kdmb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_174">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_175" name="KIB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_175">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000261"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_176" name="KmB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_176">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_177" name="PC" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_177">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksP],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MP],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2P],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k4],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1P],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k3],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_178" name="CC" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_178">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksC],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2C],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k4],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1C],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k3],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdnc],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_179" name="PCP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_179">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1P],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2P],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_180" name="CCP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_180">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1C],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2C],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdCC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_181" name="PCC" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_181">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k3],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k2],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k4],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k1],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_182" name="PCN" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_182">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k1],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k8],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k2],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k7],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_183" name="PCCP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_183">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPCC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_184" name="PCNP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_184">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPCN],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_185" name="BC" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_185">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k6],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksB],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MB],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k5],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_186" name="BCP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_186">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdBC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_187" name="BN" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_187">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k5],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k8],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k6],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k7],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_188" name="BNP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_188">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdBN],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_189" name="IN" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_189">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990513"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k7],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k8],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdIN],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_190" name="k1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_190">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate constant for entry of the PER–CRY complex into the nucleus</pre>
  </body>

        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_191" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_191">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate constant for exit of the PER–CRY complex from the nucleus</pre>
  </body>

        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_192" name="k3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_192">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate constant for the formation of the PER–CRY complex</pre>
  </body>

        </Comment>
        <Unit>
          ml/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_193" name="k4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_193">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_194" name="k5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_194">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_195" name="k6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_195">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_196" name="k7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_196">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          ml/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_197" name="k8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_197">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_198" name="kdnc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_198">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_199" name="kdn" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_199">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_200" name="kstot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_200">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_201" name="ksB" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_201">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.12*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kstot],Reference=Value>
        </Expression>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_202" name="ksC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_202">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1.6000000000000001*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kstot],Reference=Value>
        </Expression>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_203" name="ksP" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_203">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.59999999999999998*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kstot],Reference=Value>
        </Expression>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_204" name="m" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_204">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000190"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_205" name="n" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_205">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000190"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_206" name="vstot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_206">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_207" name="Kd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_207">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_208" name="Kdp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_208">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_209" name="Kp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_209">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_210" name="Vphos" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_210">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000612"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_211" name="V1B" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_211">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_212" name="V1C" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_212">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_213" name="V1P" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_213">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Vphos],Reference=Value>
        </Expression>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_214" name="V1PC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_214">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Vphos],Reference=Value>
        </Expression>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_215" name="V2B" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_215">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_216" name="V2C" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_216">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_217" name="V2P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_217">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_218" name="V2PC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_218">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_219" name="V3B" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_219">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_220" name="V3PC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_220">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Vphos],Reference=Value>
        </Expression>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_221" name="V4B" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_221">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_222" name="V4PC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_222">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_223" name="vdBC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_223">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_224" name="vdBN" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_224">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_225" name="vdCC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_225">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_226" name="vdIN" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_226">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_227" name="vdPC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_227">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_228" name="vdPCC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_228">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_229" name="vdPCN" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_229">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_108" name="Reversible reaction  between PER-CRY complex in cytosol and nucleus" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_108">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000650"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3995" name="k1" value="1"/>
          <Constant key="Parameter_3994" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_190"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="Phosphorylation of PER-CRY complex in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_109">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3979" name="Kp" value="1"/>
          <Constant key="Parameter_3984" name="V3PC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_128" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1339">
              <SourceParameter reference="ModelValue_209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1338">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1337">
              <SourceParameter reference="ModelValue_220"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="Dephosphorylation of PER-CRY complex in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_110">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T03:09:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3980" name="Kdp" value="1"/>
          <Constant key="Parameter_3977" name="V4PC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_129" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1342">
              <SourceParameter reference="ModelValue_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1341">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1340">
              <SourceParameter reference="ModelValue_222"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="Phosphorylation of PER-CRY complex in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_111">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3982" name="Kp" value="1"/>
          <Constant key="Parameter_3981" name="V1PC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_131" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1348">
              <SourceParameter reference="ModelValue_209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1347">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1346">
              <SourceParameter reference="ModelValue_214"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="Dephosphorylation of PER-CRY complex in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_112">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C20612"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3985" name="Kdp" value="1"/>
          <Constant key="Parameter_3990" name="V2PC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_130" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1345">
              <SourceParameter reference="ModelValue_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1344">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1343">
              <SourceParameter reference="ModelValue_218"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="Reversible reaction between PER, CRY and PER-CRY complex in cytosol" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_113">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000650"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3986" name="k1" value="1"/>
          <Constant key="Parameter_3983" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_192"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_79"/>
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="Phosphorylation of CRY in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_114">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3988" name="Kp" value="1"/>
          <Constant key="Parameter_3987" name="V1C" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_123" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1323">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1322">
              <SourceParameter reference="ModelValue_209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1321">
              <SourceParameter reference="ModelValue_212"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="Dephosphorylation of CRY in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_115">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C20612"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3991" name="Kdp" value="1"/>
          <Constant key="Parameter_3895" name="V2C" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_125" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1328">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1327">
              <SourceParameter reference="ModelValue_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1326">
              <SourceParameter reference="ModelValue_216"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="Translation of Cry mRNA to CRY protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_116">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C80450"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3992" name="ksC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_107" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1275">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1274">
              <SourceParameter reference="ModelValue_202"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="Transcription of Cry gene to Cry mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_117">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C17208"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3989" name="KAC" value="1"/>
          <Constant key="Parameter_3894" name="n" value="1"/>
          <Constant key="Parameter_3993" name="vsC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_127" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1336">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1335">
              <SourceParameter reference="ModelValue_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1334">
              <SourceParameter reference="ModelValue_205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1333">
              <SourceParameter reference="ModelValue_166"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="Transcription of Per gene to Per mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_118">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C17208"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3893" name="KAP" value="1"/>
          <Constant key="Parameter_3889" name="n" value="1"/>
          <Constant key="Parameter_3891" name="vsP" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_126" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1332">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1331">
              <SourceParameter reference="ModelValue_163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1330">
              <SourceParameter reference="ModelValue_205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1329">
              <SourceParameter reference="ModelValue_160"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="Translation of Per mRNA to PER protein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_119">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C80450"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3890" name="ksP" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_124" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1325">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1324">
              <SourceParameter reference="ModelValue_203"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="Phosphorylation of PER in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_120">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3888" name="Kp" value="1"/>
          <Constant key="Parameter_3892" name="V1P" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_115" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1299">
              <SourceParameter reference="ModelValue_209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1298">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1297">
              <SourceParameter reference="ModelValue_213"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="Dephosphorylation of PER in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_121">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C20612"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3887" name="Kdp" value="1"/>
          <Constant key="Parameter_3883" name="V2P" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_120" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1314">
              <SourceParameter reference="ModelValue_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1313">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1312">
              <SourceParameter reference="ModelValue_217"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="Transcription of Bmal1 gene to Bmal1 mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_122">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C17208"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3885" name="KIB" value="1"/>
          <Constant key="Parameter_3884" name="m" value="1"/>
          <Constant key="Parameter_3882" name="vsB" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_133" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1354">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1353">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1352">
              <SourceParameter reference="ModelValue_204"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1351">
              <SourceParameter reference="ModelValue_172"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="Translation of Bmal1 mRNA to BMAL1 protein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_123">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C80450"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3886" name="ksB" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_132" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1350">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1349">
              <SourceParameter reference="ModelValue_201"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="Phosphorylation of BMAL1 in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_124">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3881" name="Kp" value="1"/>
          <Constant key="Parameter_3877" name="V1B" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_134" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1357">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1356">
              <SourceParameter reference="ModelValue_209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1355">
              <SourceParameter reference="ModelValue_211"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="Dephosphorylation of BMAL1 in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_125">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C20612"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3879" name="Kdp" value="1"/>
          <Constant key="Parameter_3878" name="V2B" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_121" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1317">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1316">
              <SourceParameter reference="ModelValue_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1315">
              <SourceParameter reference="ModelValue_215"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="Reversible reation between BMAL1 in cytosol and nucleus" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_126">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000650"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3876" name="k1" value="1"/>
          <Constant key="Parameter_3880" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_194"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="Phosphorylation of BMAL1 in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_127">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3799" name="Kp" value="1"/>
          <Constant key="Parameter_3798" name="V3B" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_108" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1278">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1277">
              <SourceParameter reference="ModelValue_209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1276">
              <SourceParameter reference="ModelValue_219"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="Dephosphorylation of BMAL1 in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_128">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C20612"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3797" name="Kdp" value="1"/>
          <Constant key="Parameter_3796" name="V4B" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_109" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1281">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1280">
              <SourceParameter reference="ModelValue_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1279">
              <SourceParameter reference="ModelValue_221"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="Reversible reaction between PER-CRY complex and PER-CRY-CLOCK-BMAL1 in nuclues" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_129">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000650"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3795" name="k1" value="1"/>
          <Constant key="Parameter_3794" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_196"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_83"/>
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="Degradation of the PER-CRY-CLOCK-BMAL1 complex" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_130">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3793" name="Kd" value="1"/>
          <Constant key="Parameter_3792" name="vdIN" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_119" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1311">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1310">
              <SourceParameter reference="ModelValue_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1309">
              <SourceParameter reference="ModelValue_226"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="Degradation of Cry mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_131">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3791" name="KmC" value="1"/>
          <Constant key="Parameter_3790" name="vmC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_110" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1284">
              <SourceParameter reference="ModelValue_170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1283">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1282">
              <SourceParameter reference="ModelValue_167"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_132" name="Degradation of CRY-P protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_132">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3789" name="Kd" value="1"/>
          <Constant key="Parameter_3788" name="vdCC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_111" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1287">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1286">
              <SourceParameter reference="ModelValue_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1285">
              <SourceParameter reference="ModelValue_225"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_133" name="Non-specific degradation of Cry mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_133">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3787" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_134" name="Degradation of PER-CRY complex in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_134">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3786" name="Kd" value="1"/>
          <Constant key="Parameter_3785" name="vdPCC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_122" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1320">
              <SourceParameter reference="ModelValue_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1319">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1318">
              <SourceParameter reference="ModelValue_228"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_135" name="Degradation of PER-CRY complex in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_135">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3784" name="Kd" value="1"/>
          <Constant key="Parameter_3783" name="vdPCN" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_114" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1296">
              <SourceParameter reference="ModelValue_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1295">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1294">
              <SourceParameter reference="ModelValue_229"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_136" name="Degradation of Per mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_136">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3782" name="KmP" value="1"/>
          <Constant key="Parameter_3781" name="vmP" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_112" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1290">
              <SourceParameter reference="ModelValue_164"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1289">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1288">
              <SourceParameter reference="ModelValue_161"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_137" name="Degradation of PER-P in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_137">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3780" name="Kd" value="1"/>
          <Constant key="Parameter_3779" name="vdPC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_118" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1308">
              <SourceParameter reference="ModelValue_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1307">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1306">
              <SourceParameter reference="ModelValue_227"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_138" name="Non-specific degradation of Per mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_138">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3778" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_162"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_139" name="Degradation of Bmal1 mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_139">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3777" name="KmB" value="1"/>
          <Constant key="Parameter_3776" name="vmB" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_113" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1293">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1292">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1291">
              <SourceParameter reference="ModelValue_173"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_140" name="Non-specific degradation of Bmal1 mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_140">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3775" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_174"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_141" name="Degradation of BMAL1-P in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_141">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3774" name="Kd" value="1"/>
          <Constant key="Parameter_3773" name="vdBC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_116" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1302">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1301">
              <SourceParameter reference="ModelValue_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1300">
              <SourceParameter reference="ModelValue_223"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_142" name="Degradation of BMAL1-P in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_142">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3772" name="Kd" value="1"/>
          <Constant key="Parameter_3771" name="vdBN" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_117" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1305">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1304">
              <SourceParameter reference="ModelValue_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1303">
              <SourceParameter reference="ModelValue_224"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_143" name="Non-specific degradation of PER protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_143">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3770" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_144" name="Non-specific degradation of CRY protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_144">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3769" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_145" name="Non-specific degradation of PER-P protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_145">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3768" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_146" name="Non-specific degradation of CRY-P protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_146">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3767" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_147" name="Non-specific degradation of PER-CRY protein complex in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_147">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3766" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_148" name="Non-specific degradation of PER-CRY protein complex in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_148">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3765" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_149" name="Non-specific degradation of PER-CRY-P protein complex in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_149">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3764" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_150" name="Non-specific degradation of PER-CRY-P protein complex in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_150">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3763" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_151" name="Non-specific degradation of BMAL1 protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_151">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3762" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_152" name="Non-specific degradation of BMAL1-P protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_152">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3761" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_153" name="Non-specific degradation of BMAL1 protein in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_153">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3760" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_154" name="Non-specific degradation of BMAL1-P protein in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_154">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3759" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_155" name="Non-specific degradation of PER-CRY-BMAL1-CLOCK complex in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_155">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3758" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_6">
      <ModelParameterSet key="ModelParameterSet_6" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[MP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[MC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[MB]" value="5179041053600000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PC]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[CC]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PCP]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[CCP]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PCC]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PCN]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PCNP]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PCCP]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[BC]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[BCP]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[BN]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[BNP]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[IN]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[BTot]" value="1204428152000000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[CTot]" value="1204428152000000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PTot]" value="3613284456000000" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MP]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsP]" value="1.5" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmP]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmp]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KAP]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmP]" value="0.31" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MC]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsC]" value="1.1000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmC]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmc]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KAC]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmC]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MB]" value="8.5999999999999996" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsB]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmB]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmb]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KIB]" value="2.2000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmB]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k1]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k2]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k3]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k4]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k5]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k6]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k7]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k8]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdnc]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kstot]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksB]" value="0.12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksC]" value="1.6000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksP]" value="0.59999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[m]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vstot]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Vphos]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1B]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1C]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1P]" value="0.40000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1PC]" value="0.40000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2B]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2C]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2P]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2PC]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3B]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3PC]" value="0.40000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4B]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4PC]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdBC]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdBN]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdCC]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdIN]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPC]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPCC]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPCN]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction  between PER-CRY complex in cytosol and nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction  between PER-CRY complex in cytosol and nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction  between PER-CRY complex in cytosol and nucleus],ParameterGroup=Parameters,Parameter=k2" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of PER-CRY complex in nucleus]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of PER-CRY complex in nucleus]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of PER-CRY complex in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of PER-CRY complex in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction between PER\, CRY and PER-CRY complex in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction between PER\, CRY and PER-CRY complex in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction between PER\, CRY and PER-CRY complex in cytosol],ParameterGroup=Parameters,Parameter=k2" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of CRY in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of CRY in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Translation of Cry mRNA to CRY protein in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Cry gene to Cry mRNA]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Per gene to Per mRNA]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Translation of Per mRNA to PER protein]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of PER in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of PER in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Bmal1 gene to Bmal1 mRNA]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Translation of Bmal1 mRNA to BMAL1 protein]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of BMAL1 in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of BMAL1 in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reation between BMAL1 in cytosol and nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reation between BMAL1 in cytosol and nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reation between BMAL1 in cytosol and nucleus],ParameterGroup=Parameters,Parameter=k2" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of BMAL1 in nucleus]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of BMAL1 in nucleus]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction between PER-CRY complex and PER-CRY-CLOCK-BMAL1 in nuclues]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction between PER-CRY complex and PER-CRY-CLOCK-BMAL1 in nuclues],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction between PER-CRY complex and PER-CRY-CLOCK-BMAL1 in nuclues],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of the PER-CRY-CLOCK-BMAL1 complex]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of Cry mRNA]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of CRY-P protein in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of Cry mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of Cry mRNA],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of PER-CRY complex in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of PER-CRY complex in nucleus]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of Per mRNA]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of PER-P in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of Per mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of Per mRNA],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of Bmal1 mRNA]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of Bmal1 mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of Bmal1 mRNA],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of BMAL1-P in cytosol]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of BMAL1-P in nucleus]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER protein in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of CRY protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of CRY protein in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdnc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-P protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-P protein in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of CRY-P protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of CRY-P protein in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY protein complex in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY protein complex in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY protein complex in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY protein complex in nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY-P protein complex in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY-P protein complex in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY-P protein complex in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY-P protein complex in nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1 protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1 protein in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1-P protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1-P protein in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1 protein in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1 protein in nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1-P protein in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1-P protein in nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY-BMAL1-CLOCK complex in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY-BMAL1-CLOCK complex in nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_6"/>
      <StateTemplateVariable objectReference="ModelValue_159"/>
      <StateTemplateVariable objectReference="ModelValue_165"/>
      <StateTemplateVariable objectReference="ModelValue_171"/>
      <StateTemplateVariable objectReference="ModelValue_177"/>
      <StateTemplateVariable objectReference="ModelValue_178"/>
      <StateTemplateVariable objectReference="ModelValue_179"/>
      <StateTemplateVariable objectReference="ModelValue_180"/>
      <StateTemplateVariable objectReference="ModelValue_181"/>
      <StateTemplateVariable objectReference="ModelValue_182"/>
      <StateTemplateVariable objectReference="ModelValue_183"/>
      <StateTemplateVariable objectReference="ModelValue_184"/>
      <StateTemplateVariable objectReference="ModelValue_185"/>
      <StateTemplateVariable objectReference="ModelValue_186"/>
      <StateTemplateVariable objectReference="ModelValue_187"/>
      <StateTemplateVariable objectReference="ModelValue_188"/>
      <StateTemplateVariable objectReference="ModelValue_189"/>
      <StateTemplateVariable objectReference="Metabolite_78"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_86"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_88"/>
      <StateTemplateVariable objectReference="Metabolite_82"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_80"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_84"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_76"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_90"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_92"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="ModelValue_160"/>
      <StateTemplateVariable objectReference="ModelValue_166"/>
      <StateTemplateVariable objectReference="ModelValue_172"/>
      <StateTemplateVariable objectReference="ModelValue_201"/>
      <StateTemplateVariable objectReference="ModelValue_202"/>
      <StateTemplateVariable objectReference="ModelValue_203"/>
      <StateTemplateVariable objectReference="ModelValue_213"/>
      <StateTemplateVariable objectReference="ModelValue_214"/>
      <StateTemplateVariable objectReference="ModelValue_220"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="ModelValue_161"/>
      <StateTemplateVariable objectReference="ModelValue_162"/>
      <StateTemplateVariable objectReference="ModelValue_163"/>
      <StateTemplateVariable objectReference="ModelValue_164"/>
      <StateTemplateVariable objectReference="ModelValue_167"/>
      <StateTemplateVariable objectReference="ModelValue_168"/>
      <StateTemplateVariable objectReference="ModelValue_169"/>
      <StateTemplateVariable objectReference="ModelValue_170"/>
      <StateTemplateVariable objectReference="ModelValue_173"/>
      <StateTemplateVariable objectReference="ModelValue_174"/>
      <StateTemplateVariable objectReference="ModelValue_175"/>
      <StateTemplateVariable objectReference="ModelValue_176"/>
      <StateTemplateVariable objectReference="ModelValue_190"/>
      <StateTemplateVariable objectReference="ModelValue_191"/>
      <StateTemplateVariable objectReference="ModelValue_192"/>
      <StateTemplateVariable objectReference="ModelValue_193"/>
      <StateTemplateVariable objectReference="ModelValue_194"/>
      <StateTemplateVariable objectReference="ModelValue_195"/>
      <StateTemplateVariable objectReference="ModelValue_196"/>
      <StateTemplateVariable objectReference="ModelValue_197"/>
      <StateTemplateVariable objectReference="ModelValue_198"/>
      <StateTemplateVariable objectReference="ModelValue_199"/>
      <StateTemplateVariable objectReference="ModelValue_200"/>
      <StateTemplateVariable objectReference="ModelValue_204"/>
      <StateTemplateVariable objectReference="ModelValue_205"/>
      <StateTemplateVariable objectReference="ModelValue_206"/>
      <StateTemplateVariable objectReference="ModelValue_207"/>
      <StateTemplateVariable objectReference="ModelValue_208"/>
      <StateTemplateVariable objectReference="ModelValue_209"/>
      <StateTemplateVariable objectReference="ModelValue_210"/>
      <StateTemplateVariable objectReference="ModelValue_211"/>
      <StateTemplateVariable objectReference="ModelValue_212"/>
      <StateTemplateVariable objectReference="ModelValue_215"/>
      <StateTemplateVariable objectReference="ModelValue_216"/>
      <StateTemplateVariable objectReference="ModelValue_217"/>
      <StateTemplateVariable objectReference="ModelValue_218"/>
      <StateTemplateVariable objectReference="ModelValue_219"/>
      <StateTemplateVariable objectReference="ModelValue_221"/>
      <StateTemplateVariable objectReference="ModelValue_222"/>
      <StateTemplateVariable objectReference="ModelValue_223"/>
      <StateTemplateVariable objectReference="ModelValue_224"/>
      <StateTemplateVariable objectReference="ModelValue_225"/>
      <StateTemplateVariable objectReference="ModelValue_226"/>
      <StateTemplateVariable objectReference="ModelValue_227"/>
      <StateTemplateVariable objectReference="ModelValue_228"/>
      <StateTemplateVariable objectReference="ModelValue_229"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 8.5999999999999996 1 1 1 1 1 1 1 1 1 1 1 1 1 602214076000000 602214076000000 602214076000000 602214076000000 602214076000000 602214076000000 602214076000000 602214076000000 602214076000000 602214076000000 602214076000000 602214076000000 0 0 5179041053600000 602214076000000 1204428152000000 1204428152000000 3613284456000000 1.5 1.1000000000000001 1 0.12 1.6000000000000001 0.59999999999999998 0.40000000000000002 0.40000000000000002 0.40000000000000002 1 1.1000000000000001 0.01 0.69999999999999996 0.31 1 0.01 0.59999999999999998 0.40000000000000002 0.80000000000000004 0.01 2.2000000000000002 0.40000000000000002 0.40000000000000002 0.20000000000000001 0.40000000000000002 0.20000000000000001 0.40000000000000002 0.20000000000000001 0.5 0.10000000000000001 0.12 0.01 1 2 4 1 0.29999999999999999 0.10000000000000001 0.10000000000000001 0.40000000000000002 0.5 0.59999999999999998 0.10000000000000001 0.10000000000000001 0.29999999999999999 0.10000000000000001 0.5 0.20000000000000001 0.10000000000000001 0.5 0.59999999999999998 0.69999999999999996 0.80000000000000004 0.69999999999999996 0.69999999999999996 0.69999999999999996 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_84" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_66" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_85" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_67" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_86" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_87" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_68" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_88" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_69" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_89" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_70" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_90" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_71" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_84"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_91" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_72" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_92" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_73" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_93" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_74" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_94" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_75" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_95" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_96" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_76" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_84"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_97" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_66" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_67" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_68" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_69" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_70" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_71" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_72" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_73" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_74" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_75" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_76" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <SBMLReference file="Leloup2004Circadian_model.xml">
    <SBMLMap SBMLid="BC" COPASIkey="ModelValue_185"/>
    <SBMLMap SBMLid="BCP" COPASIkey="ModelValue_186"/>
    <SBMLMap SBMLid="BCP_0" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="BC_0" COPASIkey="Metabolite_86"/>
    <SBMLMap SBMLid="BN" COPASIkey="ModelValue_187"/>
    <SBMLMap SBMLid="BNP" COPASIkey="ModelValue_188"/>
    <SBMLMap SBMLid="BNP_0" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="BN_0" COPASIkey="Metabolite_88"/>
    <SBMLMap SBMLid="BTot" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="CC" COPASIkey="ModelValue_178"/>
    <SBMLMap SBMLid="CCP" COPASIkey="ModelValue_180"/>
    <SBMLMap SBMLid="CCP_0" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="CC_0" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="CTot" COPASIkey="Metabolite_92"/>
    <SBMLMap SBMLid="Compartment" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="Degradation_of_BMAL1_P_in_cytosol" COPASIkey="Reaction_141"/>
    <SBMLMap SBMLid="Degradation_of_BMAL1_P_in_nucleus" COPASIkey="Reaction_142"/>
    <SBMLMap SBMLid="Degradation_of_Bmal1_mRNA" COPASIkey="Reaction_139"/>
    <SBMLMap SBMLid="Degradation_of_CRY_P_protein_in_cytosol" COPASIkey="Reaction_132"/>
    <SBMLMap SBMLid="Degradation_of_Cry_mRNA" COPASIkey="Reaction_131"/>
    <SBMLMap SBMLid="Degradation_of_PER_CRY_complex_in_cytosol" COPASIkey="Reaction_134"/>
    <SBMLMap SBMLid="Degradation_of_PER_CRY_complex_in_nucleus" COPASIkey="Reaction_135"/>
    <SBMLMap SBMLid="Degradation_of_PER_P_in_cytosol" COPASIkey="Reaction_137"/>
    <SBMLMap SBMLid="Degradation_of_Per_mRNA" COPASIkey="Reaction_136"/>
    <SBMLMap SBMLid="Degradation_of_the_PER_CRY_CLOCK_BMAL1_complex" COPASIkey="Reaction_130"/>
    <SBMLMap SBMLid="Dephosphorylation_of_BMAL1_in_cytosol" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="Dephosphorylation_of_BMAL1_in_nucleus" COPASIkey="Reaction_128"/>
    <SBMLMap SBMLid="Dephosphorylation_of_CRY_in_cytosol" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="Dephosphorylation_of_PER_CRY_complex_in_cytosol" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="Dephosphorylation_of_PER_CRY_complex_in_nucleus" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="Dephosphorylation_of_PER_in_cytosol" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__1" COPASIkey="Function_128"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__10" COPASIkey="Function_121"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__11" COPASIkey="Function_108"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__12" COPASIkey="Function_109"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__13" COPASIkey="Function_119"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__14" COPASIkey="Function_110"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__15" COPASIkey="Function_111"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__16" COPASIkey="Function_122"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__17" COPASIkey="Function_114"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__18" COPASIkey="Function_112"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__19" COPASIkey="Function_118"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__2" COPASIkey="Function_129"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__20" COPASIkey="Function_113"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__21" COPASIkey="Function_116"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__22" COPASIkey="Function_117"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__3" COPASIkey="Function_131"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__4" COPASIkey="Function_130"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__5" COPASIkey="Function_123"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__6" COPASIkey="Function_125"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__7" COPASIkey="Function_115"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__8" COPASIkey="Function_120"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__9" COPASIkey="Function_134"/>
    <SBMLMap SBMLid="Hill__Copy__1" COPASIkey="Function_127"/>
    <SBMLMap SBMLid="Hill__Copy__2" COPASIkey="Function_126"/>
    <SBMLMap SBMLid="Hill__copy__1__1" COPASIkey="Function_133"/>
    <SBMLMap SBMLid="IN" COPASIkey="ModelValue_189"/>
    <SBMLMap SBMLid="IN_0" COPASIkey="Metabolite_90"/>
    <SBMLMap SBMLid="KAC" COPASIkey="ModelValue_169"/>
    <SBMLMap SBMLid="KAP" COPASIkey="ModelValue_163"/>
    <SBMLMap SBMLid="KIB" COPASIkey="ModelValue_175"/>
    <SBMLMap SBMLid="Kd" COPASIkey="ModelValue_207"/>
    <SBMLMap SBMLid="Kdp" COPASIkey="ModelValue_208"/>
    <SBMLMap SBMLid="KmB" COPASIkey="ModelValue_176"/>
    <SBMLMap SBMLid="KmC" COPASIkey="ModelValue_170"/>
    <SBMLMap SBMLid="KmP" COPASIkey="ModelValue_164"/>
    <SBMLMap SBMLid="Kp" COPASIkey="ModelValue_209"/>
    <SBMLMap SBMLid="MB" COPASIkey="ModelValue_171"/>
    <SBMLMap SBMLid="MB_0" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="MC" COPASIkey="ModelValue_165"/>
    <SBMLMap SBMLid="MC_0" COPASIkey="Metabolite_76"/>
    <SBMLMap SBMLid="MP" COPASIkey="ModelValue_159"/>
    <SBMLMap SBMLid="MP_0" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_BMAL1_P_protein_in_cytosol" COPASIkey="Reaction_152"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_BMAL1_P_protein_in_nucleus" COPASIkey="Reaction_154"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_BMAL1_protein_in_cytosol" COPASIkey="Reaction_151"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_BMAL1_protein_in_nucleus" COPASIkey="Reaction_153"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_Bmal1_mRNA" COPASIkey="Reaction_140"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_CRY_P_protein_in_cytosol" COPASIkey="Reaction_146"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_CRY_protein_in_cytosol" COPASIkey="Reaction_144"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_Cry_mRNA" COPASIkey="Reaction_133"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_CRY_BMAL1_CLOCK_complex_in_nucleus" COPASIkey="Reaction_155"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_CRY_P_protein_complex_in_cytosol" COPASIkey="Reaction_149"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_CRY_P_protein_complex_in_nucleus" COPASIkey="Reaction_150"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_CRY_protein_complex_in_cytosol" COPASIkey="Reaction_147"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_CRY_protein_complex_in_nucleus" COPASIkey="Reaction_148"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_P_protein_in_cytosol" COPASIkey="Reaction_145"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_protein_in_cytosol" COPASIkey="Reaction_143"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_Per_mRNA" COPASIkey="Reaction_138"/>
    <SBMLMap SBMLid="PC" COPASIkey="ModelValue_177"/>
    <SBMLMap SBMLid="PCC" COPASIkey="ModelValue_181"/>
    <SBMLMap SBMLid="PCCP" COPASIkey="ModelValue_183"/>
    <SBMLMap SBMLid="PCCP_0" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="PCC_0" COPASIkey="Metabolite_82"/>
    <SBMLMap SBMLid="PCN" COPASIkey="ModelValue_182"/>
    <SBMLMap SBMLid="PCNP" COPASIkey="ModelValue_184"/>
    <SBMLMap SBMLid="PCNP_0" COPASIkey="Metabolite_84"/>
    <SBMLMap SBMLid="PCN_0" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="PCP" COPASIkey="ModelValue_179"/>
    <SBMLMap SBMLid="PCP_0" COPASIkey="Metabolite_80"/>
    <SBMLMap SBMLid="PC_0" COPASIkey="Metabolite_78"/>
    <SBMLMap SBMLid="PTot" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="Phosphorylation_of_BMAL1_in_cytosol" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="Phosphorylation_of_BMAL1_in_nucleus" COPASIkey="Reaction_127"/>
    <SBMLMap SBMLid="Phosphorylation_of_CRY_in_cytosol" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="Phosphorylation_of_PER_CRY_complex_in_cytosol" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="Phosphorylation_of_PER_CRY_complex_in_nucleus" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="Phosphorylation_of_PER_in_cytosol" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="Rate_Law_for_Translation_of_mRNA_to_protein_1" COPASIkey="Function_107"/>
    <SBMLMap SBMLid="Rate_Law_for_Translation_of_mRNA_to_protein_2" COPASIkey="Function_124"/>
    <SBMLMap SBMLid="Rate_Law_for_Translation_of_mRNA_to_protein_3" COPASIkey="Function_132"/>
    <SBMLMap SBMLid="Reversible_reaction__between_PER_CRY_complex_in_cytosol_and_nucleus" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="Reversible_reaction_between_PER_CRY_complex_and_PER_CRY_CLOCK_BMAL1_in_nuclues" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="Reversible_reaction_between_PER__CRY_and_PER_CRY_complex_in_cytosol" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="Reversible_reation_between_BMAL1_in_cytosol_and_nucleus" COPASIkey="Reaction_126"/>
    <SBMLMap SBMLid="Transcription_of_Bmal1_gene_to_Bmal1_mRNA" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="Transcription_of_Cry_gene_to_Cry_mRNA" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="Transcription_of_Per_gene_to_Per_mRNA" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="Translation_of_Bmal1_mRNA_to_BMAL1_protein" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="Translation_of_Cry_mRNA_to_CRY_protein_in_cytosol" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="Translation_of_Per_mRNA_to_PER_protein" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="V1B" COPASIkey="ModelValue_211"/>
    <SBMLMap SBMLid="V1C" COPASIkey="ModelValue_212"/>
    <SBMLMap SBMLid="V1P" COPASIkey="ModelValue_213"/>
    <SBMLMap SBMLid="V1PC" COPASIkey="ModelValue_214"/>
    <SBMLMap SBMLid="V2B" COPASIkey="ModelValue_215"/>
    <SBMLMap SBMLid="V2C" COPASIkey="ModelValue_216"/>
    <SBMLMap SBMLid="V2P" COPASIkey="ModelValue_217"/>
    <SBMLMap SBMLid="V2PC" COPASIkey="ModelValue_218"/>
    <SBMLMap SBMLid="V3B" COPASIkey="ModelValue_219"/>
    <SBMLMap SBMLid="V3PC" COPASIkey="ModelValue_220"/>
    <SBMLMap SBMLid="V4B" COPASIkey="ModelValue_221"/>
    <SBMLMap SBMLid="V4PC" COPASIkey="ModelValue_222"/>
    <SBMLMap SBMLid="Vphos" COPASIkey="ModelValue_210"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_190"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_191"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_192"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_193"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_194"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_195"/>
    <SBMLMap SBMLid="k7" COPASIkey="ModelValue_196"/>
    <SBMLMap SBMLid="k8" COPASIkey="ModelValue_197"/>
    <SBMLMap SBMLid="kdmb" COPASIkey="ModelValue_174"/>
    <SBMLMap SBMLid="kdmc" COPASIkey="ModelValue_168"/>
    <SBMLMap SBMLid="kdmp" COPASIkey="ModelValue_162"/>
    <SBMLMap SBMLid="kdn" COPASIkey="ModelValue_199"/>
    <SBMLMap SBMLid="kdnc" COPASIkey="ModelValue_198"/>
    <SBMLMap SBMLid="ksB" COPASIkey="ModelValue_201"/>
    <SBMLMap SBMLid="ksC" COPASIkey="ModelValue_202"/>
    <SBMLMap SBMLid="ksP" COPASIkey="ModelValue_203"/>
    <SBMLMap SBMLid="kstot" COPASIkey="ModelValue_200"/>
    <SBMLMap SBMLid="m" COPASIkey="ModelValue_204"/>
    <SBMLMap SBMLid="n" COPASIkey="ModelValue_205"/>
    <SBMLMap SBMLid="vdBC" COPASIkey="ModelValue_223"/>
    <SBMLMap SBMLid="vdBN" COPASIkey="ModelValue_224"/>
    <SBMLMap SBMLid="vdCC" COPASIkey="ModelValue_225"/>
    <SBMLMap SBMLid="vdIN" COPASIkey="ModelValue_226"/>
    <SBMLMap SBMLid="vdPC" COPASIkey="ModelValue_227"/>
    <SBMLMap SBMLid="vdPCC" COPASIkey="ModelValue_228"/>
    <SBMLMap SBMLid="vdPCN" COPASIkey="ModelValue_229"/>
    <SBMLMap SBMLid="vmB" COPASIkey="ModelValue_173"/>
    <SBMLMap SBMLid="vmC" COPASIkey="ModelValue_167"/>
    <SBMLMap SBMLid="vmP" COPASIkey="ModelValue_161"/>
    <SBMLMap SBMLid="vsB" COPASIkey="ModelValue_172"/>
    <SBMLMap SBMLid="vsC" COPASIkey="ModelValue_166"/>
    <SBMLMap SBMLid="vsP" COPASIkey="ModelValue_160"/>
    <SBMLMap SBMLid="vstot" COPASIkey="ModelValue_206"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_67" name="hour" symbol="h">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_66">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        3600*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
