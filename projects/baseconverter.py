def decimal_to_binary(n, bits=8):
    if n >= 0:
        binary = bin(n)[2:] 
        return binary.zfill(bits)  
    else:
        positive = decimal_to_binary(-n, bits)
        return twos_complement(positive)

def binary_to_decimal(binary_str):
    return int(binary_str, 2)

def decimal_to_hex(n):
    return hex(n)[2:].upper()

def hex_to_decimal(hex_str):
    return int(hex_str, 16)

def binary_to_hex(binary_str):
    decimal_val = binary_to_decimal(binary_str)
    return decimal_to_hex(decimal_val)

def hex_to_binary(hex_str, bits_per_hex=4):
    decimal_val = hex_to_decimal(hex_str)
    total_bits = len(hex_str) * bits_per_hex
    return decimal_to_binary(decimal_val, total_bits)

def twos_complement(binary_str):
    flipped = ''.join('1' if bit == '0' else '0' for bit in binary_str)
    
    result = list(flipped)
    carry = 1
    for i in range(len(result) - 1, -1, -1):
        if carry == 0:
            break
        if result[i] == '0':
            result[i] = '1'
            carry = 0
        else:  # result[i] == '1'
            result[i] = '0'
            carry = 1
    
    return ''.join(result)

def twos_complement_to_decimal(binary_str):
    bits = len(binary_str)
    if binary_str[0] == '0':  # Positive number
        return binary_to_decimal(binary_str)
    else: 
        positive_binary = twos_complement(binary_str)
        return -binary_to_decimal(positive_binary)

if __name__ == "__main__":
    print("=" * 50)
    print("  NUMBER BASE CONVERTER — DAY 2 PROJECT")
    print("=" * 50)

    print("\n Decimal ↔ Binary ")
    print(f"42 in binary (8-bit): {decimal_to_binary(42)}")          
    print(f"10110 to decimal: {binary_to_decimal('10110')}")          
    print(f"-5 in binary (8-bit): {decimal_to_binary(-5)}")           

    print("\n Decimal ↔ Hex ")
    print(f"255 in hex: {decimal_to_hex(255)}")                       
    print(f"0x1A3 to decimal: {hex_to_decimal('1A3')}")          

    print("\n Binary ↔ Hex ")
    print(f"10101100 to hex: {binary_to_hex('10101100')}")           
    print(f"FF to binary: {hex_to_binary('FF')}")                  

    print("\n 2's Complement ")
    print(f"2's comp of 00001010: {twos_complement('00001010')}")     
    print(f"11110110 as signed decimal: {twos_complement_to_decimal('11110110')}")  
    print(f"11111111 as signed decimal: {twos_complement_to_decimal('11111111')}") 
    print(f"10000000 as signed decimal: {twos_complement_to_decimal('10000000')}") 

    print("\n All tests complete!")